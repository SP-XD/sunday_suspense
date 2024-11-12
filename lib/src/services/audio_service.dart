import 'dart:async';
import 'dart:developer';

import 'package:audio_service/audio_service.dart' as aps;
import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/data_provider/ytexplode_provider.dart';
import 'package:midnight_suspense/src/data/models/app_data_model.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class AudioService extends aps.BaseAudioHandler with aps.SeekHandler {
  AudioService() {
    _asyncInit();
    _player = AudioPlayer();
    // So that our clients (the Flutter UI and the system notification) know
    // what state to display, here we set up our audio handler to broadcast all
    // playback state changes as they happen via playbackState...
    _player.playbackEventStream.map(_transformEvent).pipe(playbackState);
    ytProvider = getIt<YtExplodeProvider>();
    _player.playbackEventStream.listen((event) {
      //   log('AudioService: playing ${event.currentIndex}');
      if (event.currentIndex == null) return;
      if (event.currentIndex! >= videoPlaylist.length) return;
      if (videoPlaylist[event.currentIndex!] == currentlyPlaying) return;

      switch (_dataQuality) {
        case DataQuality.low:
          _currentThumbnail = videoPlaylist[event.currentIndex!].thumbnails?.lowResUrl ?? '';
          break;
        case DataQuality.medium:
          _currentThumbnail = videoPlaylist[event.currentIndex!].thumbnails?.mediumResUrl ?? '';
          break;
        case DataQuality.high:
          _currentThumbnail = videoPlaylist[event.currentIndex!].thumbnails?.highResUrl ?? '';
          break;
      }

      currentlyPlaying = videoPlaylist[event.currentIndex!];
    });
  }

  void _asyncInit() async {
    audioSession = await AudioSession.instance;
    await audioSession.configure(AudioSessionConfiguration.music());
  }

  late final AudioSession audioSession;

  late final AudioPlayer _player;
  late final YtExplodeProvider ytProvider;

  DataQuality _dataQuality = DataQuality.high;

  String _currentThumbnail = '';
  String get currentThumbnail => _currentThumbnail;

  VideoModel? currentlyPlaying;
  bool get isPlaying => _player.playing;

  Stream<Duration> get currentPosition => _player.positionStream;
  Stream<Duration?> get duration => _player.durationStream;
  Stream<Duration> get bufferedPosition => _player.bufferedPositionStream;

  ConcatenatingAudioSource audioPlaylist = ConcatenatingAudioSource(
    children: [],
    useLazyPreparation: true,
  );
  List<VideoModel> videoPlaylist = [];

  /// Plays the audio from the given video.
  Future<void> playAudio({required VideoModel video}) async {
    var streamManifest = await ytProvider.ytExplodeInstance!.videos.streamsClient.getManifest(video.videoId);

    // audioPlaylist.clear() is buggy, so we have to create a new instance
    audioPlaylist = ConcatenatingAudioSource(
      children: [],
      useLazyPreparation: true,
    );

    videoPlaylist.clear();
    var audioUrl = getUrlBasedOnDataQuality(manifest: streamManifest);
    var mediaItem = aps.MediaItem(
      id: video.id.toString(),
      title: video.title ?? '',
      artUri: video.thumbnails != null && video.thumbnails!.lowResUrl.isNotEmpty
          ? Uri.parse(
              video.thumbnails!.lowResUrl,
            )
          : null,
    );
    audioPlaylist.add(
      AudioSource.uri(audioUrl, tag: mediaItem),
    );
    videoPlaylist.add(video);
    // set three streams for quality selection (low, medium, high)
    // var streamInfo = streamManifest.audioOnly.withHighestBitrate();
    // var stream = await ytProvider!.yt!.videos.streamsClient.get(streamInfo);
    // var file = File('audio.mp3');
    // await stream.pipe(file.openWrite());
    await _player.setAudioSource(audioPlaylist);
    if (await audioSession.setActive(true)) {
      _player.play();
      this.playMediaItem(mediaItem);
    } else {
      log("AudioSession not set active");
    }
  }

  // Todo: implement this
  /// Plays the audio from the queue at the given index.
  Future<void> playAudioFromQueue({required int playIndex}) async {
    await _player.setAudioSource(audioPlaylist, initialIndex: playIndex, initialPosition: Duration.zero);
  }

  /// use isPlaying to determine if the audio is playing or not
  @override
  Future<void> play() async {
    log("play @audioService => _player.playing: ${_player.playing}  ${DateTime.timestamp()}");
    if (!_player.playing) {
      if (await audioSession.setActive(true)) {
        await _player.play();
      } else {
        log("AudioSession not set active");
      }
    }
  }

  @override
  Future<void> pause() async {
    log("pause @audioService => _player.playing: ${_player.playing} ${DateTime.timestamp()}");
    if (_player.playing) {
      if (await audioSession.setActive(false)) {
        await _player.pause();
      }
    }
  }

  /// Stops the audio.
  @override
  Future<void> stop() async {
    await audioSession.setActive(false);
    _player.stop();
    // this.stop();
  }

  /// Seeks to a specific position in the audio.
  Future<void> seekTo({required Duration position}) async {
    _player.seek(position);
  }

  /// Sets the volume of this player, where 1.0 is normal volume.
  Future<void> setVolume({required double volume}) async {
    _player.setVolume(volume);
  }

  /// Sets the playback speed where 1.0 is normal speed.
  @override
  Future<void> setSpeed(double speed) async {
    _player.setSpeed(speed);
  }

  Future<void> addPlaylist({required List<VideoModel> videos}) async {
    for (var video in videos) {
      var streamManifest = await ytProvider.ytExplodeInstance!.videos.streamsClient.getManifest(video.id);
      await audioPlaylist.add(AudioSource.uri(streamManifest.audioOnly.withHighestBitrate().url));
    }
  }

  Future<void> changeDataQuality({required DataQuality quality}) async {
    _dataQuality = quality;
  }

  Uri getUrlBasedOnDataQuality({required StreamManifest manifest}) {
    switch (_dataQuality) {
      case DataQuality.low:
        return manifest.audioOnly.sortByBitrate().last.url;
      case DataQuality.medium:
        return manifest.audioOnly.sortByBitrate()[manifest.audioOnly.sortByBitrate().length ~/ 2].url;
      case DataQuality.high:
        return manifest.audioOnly.withHighestBitrate().url;
    }
  }

  /// Transform a just_audio event into an audio_service state.
  ///
  /// This method is used from the constructor. Every event received from the
  /// just_audio player will be transformed into an audio_service state so that
  /// it can be broadcast to audio_service clients.
  aps.PlaybackState _transformEvent(PlaybackEvent event) {
    return aps.PlaybackState(
      controls: [
        if (_player.playing) aps.MediaControl.pause else aps.MediaControl.play,
        // aps.MediaControl.stop,
        // aps.MediaControl.rewind,
        // const aps.MediaControl(
        //   androidIcon: 'drawable/baseline_forward_30_24',
        //   label: 'Fast Forward',
        //   action: aps.MediaAction.fastForward,
        // ),
        // TODO: Add favorite button
        // aps.MediaControl.custom(
        //     androidIcon: 'drawable/ic_baseline_favorite_24',
        //     label: 'favorite',
        //     name: 'favorite',
        //     extras: <String, dynamic>{'level': 1}),
      ],
      systemActions: const {
        aps.MediaAction.seek,
        //   aps.MediaAction.seekForward,
        //   aps.MediaAction.seekBackward,
      },
      processingState: const {
        ProcessingState.idle: aps.AudioProcessingState.idle,
        ProcessingState.loading: aps.AudioProcessingState.loading,
        ProcessingState.buffering: aps.AudioProcessingState.buffering,
        ProcessingState.ready: aps.AudioProcessingState.ready,
        ProcessingState.completed: aps.AudioProcessingState.completed,
      }[_player.processingState]!,
      playing: _player.playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
      queueIndex: event.currentIndex,
    );
  }
}

// class CustomAudioStreamSource extends StreamAudioSource {
//   final List<int> bytes;
//   CustomAudioStreamSource(this.bytes);

//   @override
//   Future<StreamAudioResponse> request([int? start, int? end]) async {
//     start ??= 0;
//     end ??= bytes.length;
//     return StreamAudioResponse(
//       sourceLength: bytes.length,
//       contentLength: end - start,
//       offset: start,
//       stream: Stream.value(bytes.sublist(start, end)),
//       contentType: 'audio/mpeg',
//     );
//   }
// }
