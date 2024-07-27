import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:midnight_suspense/src/data/data_provider/ytexplode_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class AudioService extends ChangeNotifier {
  AudioService() {
    _player = AudioPlayer();
    ytProvider = YtExplodeProvider();
  }

  late final AudioPlayer _player;
  late final YtExplodeProvider ytProvider;

  bool get isPlaying => _player.playing;
  String currentThumbnail = '';

  AudioPlayer get player => _player;

  Future<void> playAudio({required Video video}) async {
    currentThumbnail = video.thumbnails.mediumResUrl;
    var streamManifest = await ytProvider.yt!.videos.streamsClient.getManifest(video.id);
    // set three streams for quality selection (low, medium, high)
    // var streamInfo = streamManifest.audioOnly.withHighestBitrate();
    // var stream = await ytProvider!.yt!.videos.streamsClient.get(streamInfo);
    // var file = File('audio.mp3');
    // await stream.pipe(file.openWrite());
    await _player.setAudioSource(AudioSource.uri(streamManifest.audioOnly.withHighestBitrate().url));
    _player.play();

    notifyListeners();
  }

  Future<void> playPauseToggle() async {
    if (_player.playing) {
      await _player.pause();
    } else {
      await _player.play();
    }
  }

  Future<void> stop() async {
    _player.stop();
  }

  Future<void> seek({required Duration position}) async {
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
