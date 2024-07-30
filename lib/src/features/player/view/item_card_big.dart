import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';
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
    final DateFormat dateFormat = DateFormat('d MMM yyyy');
    final String formattedDate = dateFormat.format(video.uploadDate!);
    final String formattedDuration = formatDuration(video.duration ?? Duration.zero);

    return DecoratedBox(
      decoration: BoxDecoration(
        // color: Colors.black,
        borderRadius: BorderRadius.circular(25),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(122, 183, 28, 28),
              Colors.grey.shade900,
            ],
            stops: [0.1, 0.3],
            transform: GradientRotation(0.2),
          ),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: AspectRatio(
            aspectRatio: 16 / 10,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: video.thumbnails.maxResUrl.isNotEmpty
                        ? video.thumbnails.maxResUrl
                        : video.thumbnails.highResUrl.isNotEmpty
                            ? video.thumbnails.highResUrl
                            : video.thumbnails.mediumResUrl.isNotEmpty
                                ? video.thumbnails.mediumResUrl
                                : video.thumbnails.lowResUrl,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black12, Colors.black],
                        stops: [0.2, 0.9],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 15,
                  right: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              video.title.toString(),
                              softWrap: true,
                              maxLines: 3,
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              formattedDate + ' // ' + formattedDuration,
                              style: textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.normal,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset(1, 1),
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      IconButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          fixedSize: WidgetStateProperty.all(Size(40, 40)),
                          backgroundColor: WidgetStateProperty.all(Colors.black),
                          shape: WidgetStateProperty.all(
                            CircleBorder(
                              side: BorderSide(color: Colors.grey, width: 0.5),
                            ),
                          ),
                        ),
                        icon: Assets.icons.play.svg(height: 40, width: 40),
                      )
                    ],
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Theme.of(context).primaryColorDark,
                      overlayColor: WidgetStateProperty.all(Colors.black45),
                      onTap: () {
                        audioService.playAudio(video: video);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString();
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    if (duration.inHours == 0) {
      return "$twoDigitMinutes mins";
    }

    return "${twoDigits(duration.inHours)}hr $twoDigitMinutes mins";
  }
}
