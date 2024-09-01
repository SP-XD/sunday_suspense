import 'dart:async';
import 'dart:developer';

import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:midnight_suspense/src/data/data_provider/ytexplode_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class AudioService {
  AudioService() {
    _player = AudioPlayer();
    ytProvider = YtExplodeProvider();
    _init();
    _player.playbackEventStream.listen((event) {
      log('AudioService: playing ${event.currentIndex}');
      if (event.currentIndex == null) return;
      if (event.currentIndex! >= videoPlaylist.length) return;
      if (videoPlaylist[event.currentIndex!] == currentlyPlaying) return;
      _currentThumbnail = videoPlaylist[event.currentIndex!].thumbnails.mediumResUrl;
      currentlyPlaying = videoPlaylist[event.currentIndex!];
    });
  }

  void _init() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.music());
  }

  late final AudioPlayer _player;
  late final YtExplodeProvider ytProvider;

  String _currentThumbnail = '';
  String get currentThumbnail => _currentThumbnail;

  AudioPlayer get player => _player;

  Video? currentlyPlaying;
  bool get isPlaying => _player.playing;

  Stream<Duration> get currentPosition => _player.positionStream;
  Stream<Duration?> get duration => _player.durationStream;
  Stream<Duration> get bufferedPosition => _player.bufferedPositionStream;

  ConcatenatingAudioSource audioPlaylist = ConcatenatingAudioSource(
    children: [],
    useLazyPreparation: true,
  );
  List<Video> videoPlaylist = [];

  /// Plays the audio from the given video.
  Future<void> playAudio({required Video video}) async {
    var streamManifest = await ytProvider.ytExplodeInstance!.videos.streamsClient.getManifest(video.id);
    audioPlaylist.clear();
    videoPlaylist.clear();
    audioPlaylist.add(
      AudioSource.uri(
        streamManifest.audioOnly.withHighestBitrate().url,
        tag: MediaItem(
          id: video.id.toString(),
          title: video.title,
          artUri: Uri.parse(
            video.thumbnails.lowResUrl,
          ),
        ),
      ),
    );
    videoPlaylist.add(video);
    // set three streams for quality selection (low, medium, high)
    // var streamInfo = streamManifest.audioOnly.withHighestBitrate();
    // var stream = await ytProvider!.yt!.videos.streamsClient.get(streamInfo);
    // var file = File('audio.mp3');
    // await stream.pipe(file.openWrite());
    await _player.setAudioSource(audioPlaylist);
    _player.play();
  }

  // Todo: implement this
  /// Plays the audio from the queue at the given index.
  Future<void> playAudioFromQueue({required int playIndex}) async {
    await _player.setAudioSource(audioPlaylist, initialIndex: playIndex, initialPosition: Duration.zero);
  }

  /// use isPlaying to determine if the audio is playing or not
  Future<void> playPauseToggle() async {
    if (_player.playing) {
      await _player.pause();
    } else {
      await _player.play();
    }
  }

  /// Stops the audio.
  Future<void> stop() async {
    _player.stop();
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
  Future<void> setSpeed({required double speed}) async {
    _player.setSpeed(speed);
  }

  Future<void> addPlaylist({required List<Video> videos}) async {
    for (var video in videos) {
      var streamManifest = await ytProvider.ytExplodeInstance!.videos.streamsClient.getManifest(video.id);
      await audioPlaylist.add(AudioSource.uri(streamManifest.audioOnly.withHighestBitrate().url));
    }
  }

  // TODO: #2 implement bitrate selection for audio quality
  Future<void> changeBitrate({required BitrateEnum bitrate}) async {
    switch (bitrate) {
      case BitrateEnum.low:
        // audioPlaylist.add(CustomAudioStreamSource(lowBitrate));
        break;
      case BitrateEnum.medium:
        // audioPlaylist.add(CustomAudioStreamSource(mediumBitrate));
        break;
      case BitrateEnum.high:
        // audioPlaylist.add(CustomAudioStreamSource(highBitrate));
        break;
    }
  }
}

enum BitrateEnum {
  low,
  medium,
  high,
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
