import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:intl/intl.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';

import '../bloc/player_bloc.dart';

class ItemCardBig extends StatelessWidget {
  ItemCardBig({
    super.key,
    required this.video,
  });
  final VideoModel video;
  final DateFormat dateFormat = DateFormat('d MMM yyyy');

  @override
  Widget build(BuildContext context) {
    final String formattedDate = video.uploadDate != null ? dateFormat.format(video.uploadDate!) : '--';
    final textTheme = Theme.of(context).textTheme;
    final String formattedDuration = formatDuration(video.totalDurationConverted);

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
            aspectRatio: 16 / 12,
            child: Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: video.thumbnails!.maxResUrl.isNotEmpty
                        ? video.thumbnails!.maxResUrl
                        : video.thumbnails!.highResUrl.isNotEmpty
                            ? video.thumbnails!.highResUrl
                            : video.thumbnails!.mediumResUrl.isNotEmpty
                                ? video.thumbnails!.mediumResUrl
                                : video.thumbnails!.lowResUrl,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    memCacheHeight: 683,
                    memCacheWidth: 1094,
                  ),
                ),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black12, Colors.black],
                        stops: [0.2, 0.8],
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Theme.of(context).primaryColorDark,
                      overlayColor: WidgetStateProperty.all(Colors.red.shade800.withOpacity(0.2)),
                      onTap: () {},
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 15,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            const SizedBox(height: 5),
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
                          ],
                        ),
                      ),
                      const SizedBox(width: 2),
                      iconButtonWidget(video)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocBuilder<PlayerBloc, PlayerState> iconButtonWidget(VideoModel video) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            bool isPlaying = state.maybeMap(
              playing: (_) => true,
              paused: (_) => false,
              orElse: () => false,
            );

            VideoModel? currentVideo = state.maybeMap(
              playing: (playingState) => playingState.audioService.currentlyPlaying,
              paused: (pausedState) => pausedState.audioService.currentlyPlaying,
              loading: (loadingState) => loadingState.video,
              orElse: () => null,
            );

            if (isPlaying && currentVideo != null && currentVideo.id?.value == video.id?.value) {
              context.read<PlayerBloc>().add(PlayerEvent.pause());
            } else {
              if (currentVideo?.id?.value != video.id?.value) {
                context.read<PlayerBloc>().add(PlayerEvent.playFromChannel(video: video));
              } else
                context.read<PlayerBloc>().add(PlayerEvent.play());
            }
          },
          style: ButtonStyle(
            fixedSize: WidgetStateProperty.all(Size(40, 40)),
            backgroundColor: WidgetStateProperty.all(Colors.black),
            shape: WidgetStateProperty.all(
              CircleBorder(
                side: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
          ),
          icon: state.maybeMap(
            playing: (playState) => playState.audioService.currentlyPlaying?.id?.value == video.id?.value
                ? Assets.icons.pause.svg(height: 40, width: 40)
                : Assets.icons.play.svg(height: 40, width: 40),
            loading: (loadingState) => loadingState.video?.id?.value == video.id?.value
                ? loadingWidget(size: 10)
                : Assets.icons.play.svg(height: 40, width: 40),
            orElse: () => Assets.icons.play.svg(height: 40, width: 40),
          ),
        );
      },
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
