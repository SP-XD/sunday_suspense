import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/features/player/view/player_view.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';
import 'package:ticker_text/ticker_text.dart';

import '../bloc/player_bloc.dart' hide audioService;

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocConsumer<PlayerBloc, PlayerState>(
      listener: (context, state) {
        state.mapOrNull(
          playing: (state) {
            // do something
          },
          paused: (state) {
            // do something
          },
          stopped: (state) {
            // do something
            // context.read<PlayerBloc>().add()
          },
        );
      },
      builder: (context, state) {
        if (state == PlayerState.initial()) {
          return SizedBox.shrink();
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OpenContainer(
              middleColor: Colors.black,
              openColor: Colors.black,
              openBuilder: (context, _) {
                return PlayerView();
              },
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              closedColor: Colors.black,
              transitionDuration: Duration(milliseconds: 500),
              closedBuilder: (context, openContainerAction) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  height: 70,
                  // decoration: BoxDecoration(
                  //   color: Colors.grey.shade200,
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          openContainerAction();
                        },
                        child: state.maybeWhen(
                          playing: (audioService) => thumbnailAndTitle(
                            textTheme,
                            thumbnailUrl: audioService.currentThumbnail,
                            title: audioService.currentlyPlaying?.title ?? '',
                          ),
                          paused: (audioService) => thumbnailAndTitle(
                            textTheme,
                            thumbnailUrl: audioService.currentThumbnail,
                            title: audioService.currentlyPlaying?.title ?? '',
                          ),
                          stopped: (audioService) => thumbnailAndTitle(
                            textTheme,
                            thumbnailUrl: audioService.currentThumbnail,
                            title: audioService.currentlyPlaying?.title ?? '',
                          ),
                          orElse: () => SizedBox.shrink(),
                        ),
                      ),
                      const Spacer(),
                      state.maybeWhen(
                        loading: () => loadingWidget(),
                        playing: (_) => playerControls(isPlaying: true),
                        paused: (_) => playerControls(isPlaying: false),
                        stopped: (_) => playerControls(isPlaying: false),
                        orElse: () => SizedBox.shrink(),
                      ),
                    ],
                  ),
                );
              },
            ),
            state.maybeWhen(
              playing: (audioService) => playerSlider(
                currentPosition: audioService.player.position.inSeconds.toDouble(),
                duration: audioService.player.duration?.inSeconds.toDouble() ?? 0,
              ),
              paused: (audioService) => playerSlider(
                currentPosition: audioService.player.position.inSeconds.toDouble(),
                duration: audioService.player.duration?.inSeconds.toDouble() ?? 0,
              ),
              stopped: (audioService) => playerSlider(
                currentPosition: audioService.player.position.inSeconds.toDouble(),
                duration: audioService.player.duration?.inSeconds.toDouble() ?? 0,
              ),
              orElse: () => SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }

  Row thumbnailAndTitle(
    TextTheme textTheme, {
    required String thumbnailUrl,
    required String title,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (thumbnailUrl.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              imageUrl: thumbnailUrl,
              memCacheWidth: 300,
              memCacheHeight: 200,
              width: 70,
              height: 50,
              fit: BoxFit.cover,
            ),
          )
        else
          SizedBox(width: 70, height: 50).animate().shimmer(),
        const SizedBox(width: 10),
        SizedBox(
          width: 120,
          child: TickerText(
            child: Text(
              '${title.isNotEmpty ? title : ''}',
              style: textTheme.labelMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }

  Row playerControls({required bool isPlaying}) {
    return Row(children: [
      IconButton(
        icon: Assets.icons.previous.svg(),
        onPressed: () {},
      ),
      IconButton(
        icon: isPlaying ? Assets.icons.pause.svg() : Assets.icons.play.svg(),
        onPressed: () {
          context.read<PlayerBloc>().add(PlayerEvent.pausePlayToggle());
        },
      ),
      IconButton(
        icon: Assets.icons.next.svg(),
        onPressed: () {},
      ),
    ]);
  }

  SizedBox playerSlider({required double currentPosition, required double duration}) {
    return SizedBox(
      height: 1,
      width: double.maxFinite,
      child: Slider(
        value: currentPosition,
        min: 0,
        max: duration,
        onChanged: (value) {
          context.read<PlayerBloc>().add(
                PlayerEvent.seek(
                  position: Duration(
                    seconds: value.toInt(),
                  ),
                ),
              );
        },
      ),
    );
  }
}
