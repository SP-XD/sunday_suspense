import 'package:flutter/material.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class ItemCardBig extends StatelessWidget {
  ItemCardBig({
    super.key,
    required this.video,
  });
  final Video video;
  final AudioService audioService = getIt<AudioService>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        key: key,
        onTap: () {
          audioService.playAudio(video: video);
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(video.thumbnails.highResUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Text(
            video.title.toString(),
            style: textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(1, 1),
                  blurRadius: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
