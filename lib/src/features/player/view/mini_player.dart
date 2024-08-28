import 'dart:developer';

import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/features/player/view/player_view.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ticker_text/ticker_text.dart';

import '../bloc/player_bloc.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  Stream<Duration> currentPositionStream = Stream.value(Duration.zero);
  Stream<Duration?> durationStream = Stream.value(null);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        // log("state: $state @builder");

        if (state == PlayerState.initial()) {
          return SizedBox.shrink();
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OpenContainer(
              middleColor: Colors.black,
              openColor: Colors.black,
              tappable: state.mapOrNull(initial: (_) => false) ?? true,
              openBuilder: (context, closedAction) {
                return state != PlayerState.initial
                    ? PlayerView(
                        onBackPressed: closedAction,
                      )
                    : SizedBox.shrink();
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
                return miniPlayerControls(openContainerAction, state, textTheme);
              },
            ),
            state.whenOrNull(
                  loading: (state) => Divider(color: Colors.grey.shade800, height: 0.5, thickness: 0.5),
                  playing: (audioService) => playerSlider(audioService),
                  paused: (audioService) => playerSlider(audioService),
                  stopped: (audioService) => playerSlider(audioService),
                ) ??
                SizedBox.shrink(),
          ],
        );
      },
    );
  }

  Container miniPlayerControls(VoidCallback openContainerAction, PlayerState state, TextTheme textTheme) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 75,
      // decoration: BoxDecoration(
      //   color: Colors.grey.shade200,
      //   borderRadius: BorderRadius.circular(20),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              if (state.mapOrNull(initial: (_) => true) ?? false) return;
              openContainerAction();
            },
            child: state.mapOrNull(
              initial: (value) => thumbnailAndTitle(
                textTheme,
              ),
              loading: (state) => thumbnailAndTitle(
                textTheme,
                thumbnailUrl: state.video?.thumbnails.mediumResUrl ?? "",
                title: state.video?.title ?? "",
              ),
              playing: (playingState) => thumbnailAndTitle(
                textTheme,
                thumbnailUrl: playingState.audioService.currentThumbnail,
                title: playingState.audioService.currentlyPlaying?.title ?? '',
              ),
              paused: (pausedState) => thumbnailAndTitle(
                textTheme,
                thumbnailUrl: pausedState.audioService.currentThumbnail,
                title: pausedState.audioService.currentlyPlaying?.title ?? '',
              ),
              stopped: (stoppedState) => thumbnailAndTitle(
                textTheme,
                thumbnailUrl: stoppedState.audioService.currentThumbnail,
                title: stoppedState.audioService.currentlyPlaying?.title ?? '',
              ),
            ),
          ),
          const Spacer(),
          state.whenOrNull(
                loading: (_) => Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: loadingWidget(size: 20),
                ),
                playing: (_) => playerControls(isPlaying: true),
                paused: (_) => playerControls(isPlaying: false),
                stopped: (_) => playerControls(isPlaying: false),
              ) ??
              SizedBox.shrink(),
        ],
      ),
    );
  }

  Row thumbnailAndTitle(
    TextTheme textTheme, {
    String thumbnailUrl = '',
    String title = 'Nothing is playing',
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (thumbnailUrl.isNotEmpty)
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade800,
                width: 0.5,
                strokeAlign: BorderSide.strokeAlignCenter,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                imageUrl: thumbnailUrl,
                memCacheWidth: 300,
                memCacheHeight: 200,
                width: 70,
                height: 50,
                fit: BoxFit.cover,
                placeholder: (context, url) => SizedBox(width: 70, height: 50).animate().shimmer(),
              ),
            ),
          )
        else
          SizedBox(width: 70, height: 50),
        const SizedBox(width: 10),
        SizedBox(
          width: 120,
          child: TickerText(
            child: Text(
              '${title}',
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

  SizedBox playerSlider(AudioService audioService) {
    currentPositionStream = audioService.currentPosition;
    durationStream = audioService.duration;

    return SizedBox(
      height: 2,
      width: double.maxFinite,
      child: StreamBuilder<(Duration, Duration?)>(
        stream: Rx.combineLatest2(
          currentPositionStream,
          durationStream,
          (c, d) => (c, d),
        ),
        builder: (
          context,
          snapshot,
        ) {
          return SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 0.5,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 0,
                disabledThumbRadius: 0,
                elevation: 0,
                pressedElevation: 0,
              ),
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              value: snapshot.data?.$1.inSeconds.toDouble() ?? 0,
              min: 0,
              max: snapshot.data?.$2?.inSeconds.toDouble() ?? 0,
              onChanged: (value) {
                // context.read<PlayerBloc>().add(
                //       PlayerEvent.seek(
                //         position: Duration(
                //           seconds: value.toInt(),
                //         ),
                //       ),
                //     );
              },
            ),
          );
        },
      ),
    );
  }
}
