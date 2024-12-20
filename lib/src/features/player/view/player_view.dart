import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/features/common_widgets/blur_art.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';
import 'package:midnight_suspense/src/shared_bloc/blur_art_cubit.dart';
import 'package:rxdart/rxdart.dart';

import '../bloc/player_bloc.dart';
import 'widgets/media_info_buttons.dart';

@RoutePage()
class PlayerView extends StatefulWidget {
  const PlayerView({super.key, required this.onBackPressed});
  final void Function() onBackPressed;

  @override
  State<PlayerView> createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> with SingleTickerProviderStateMixin {
  Stream<Duration> currentPositionStream = Stream.value(Duration.zero);
  Stream<Duration?> durationStream = Stream.value(null);
  Stream<Duration> bufferedPositionStream = Stream.value(Duration.zero);

  AnimationController? artWorkAnimationController;
  String artWorkUrl = "";

  @override
  void initState() {
    super.initState();
    artWorkAnimationController = AnimationController(vsync: this, duration: 30.seconds);
  }

  @override
  void dispose() {
    artWorkAnimationController?.dispose();
    super.dispose();
  }

  void setArtWork(VideoModel? video) {
    final blurArtCubitState = context.watch<BlurArtCubit>().state;

    if (blurArtCubitState.imageUrl.isEmpty) return;
    if (blurArtCubitState.videoId == video?.videoId?.value) return;

    context.read<BlurArtCubit>().setBlurArt(
          imageUrl: video?.thumbnails?.lowResUrl ?? "",
          videoId: video?.videoId?.value ?? "",
        );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragEnd: (details) {
        if (details.velocity.pixelsPerSecond.dy > 20) widget.onBackPressed();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              FontAwesome.chevron_down_solid,
              color: Colors.grey,
            ),
            onPressed: widget.onBackPressed,
          ),
        ),
        body: BlocBuilder<PlayerBloc, PlayerState>(
          builder: (context, state) {
            state.mapOrNull(
              loading: (loadingState) => setArtWork(loadingState.video),
              playing: (value) => setArtWork(value.audioService.currentlyPlaying),
              paused: (value) => setArtWork(value.audioService.currentlyPlaying),
            );

            return Stack(
              children: [
                Positioned.fill(
                  child: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                        ],
                        stops: [0.5, 0.99],
                      ),
                    ),
                    child: BlurArtWidget(),
                  ),
                ),
                state.mapOrNull(
                      loading: (initialState) => Center(
                        child: loadingWidget(),
                      ),
                      playing: (playingState) => playerControls(context, playingState.audioService, true),
                      paused: (pausedState) => playerControls(context, pausedState.audioService, false),
                    ) ??
                    SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  Column playerControls(BuildContext context, AudioService audioService, bool isPlaying) {
    if (artWorkAnimationController != null) {
      if (!isPlaying)
        artWorkAnimationController!.animateBack(
          0,
          duration: 2.seconds,
          curve: Curves.fastEaseInToSlowEaseOut,
        );
      else
        artWorkAnimationController!.repeat();
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            // border: Border.all(
            //   color: Colors.red.shade800,
            //   width: 0.5,
            // ),
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                audioService.currentThumbnail.isNotEmpty
                    ? audioService.currentThumbnail
                    : 'https://via.placeholder.com/150',
              ),
              colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.darken,
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: CachedNetworkImage(
              imageUrl: audioService.currentThumbnail.isNotEmpty
                  ? audioService.currentThumbnail
                  : 'https://via.placeholder.com/150',
              placeholder: (context, url) => SizedBox.expand().animate().shimmer(
                colors: [Colors.red, Colors.black, Colors.red],
                duration: Duration(milliseconds: 1500),
                angle: 0.5,
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.contain,
              width: 300,
              height: 300,
              // color: Colors.black,
            ),
          ),
        )
            .animate(
              controller: artWorkAnimationController,
              onPlay: (controller) => controller.repeat(),
              autoPlay: true,
            )
            .rotate(
              duration: Duration(seconds: 30),
            ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 5,
              ),
              child: Text(
                '${audioService.currentlyPlaying?.title ?? 'Title'}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Text(
              '${audioService.currentlyPlaying?.author ?? 'Author'}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: playerSlider(audioService),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Assets.icons.previous.svg(height: 40, width: 40),
              onPressed: () {},
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.transparent),
                shape: WidgetStateProperty.all(
                  CircleBorder(
                    side: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
              ),
              icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                switchInCurve: Curves.decelerate,
                switchOutCurve: Curves.decelerate,
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: RotationTransition(
                      turns: animation,
                      child: child,
                    ),
                  );
                },
                child: isPlaying
                    ? Assets.icons.pause.svg(key: Key("pause"), height: 50, width: 50)
                    : Assets.icons.play.svg(key: Key("play"), height: 50, width: 50),
              ),
              onPressed: () {
                isPlaying
                    ? context.read<PlayerBloc>().add(PlayerEvent.pause())
                    : context.read<PlayerBloc>().add(PlayerEvent.play());
              },
            ),
            IconButton(
              icon: Assets.icons.next.svg(height: 40, width: 40),
              onPressed: () {
                context.read<PlayerBloc>().add(PlayerEvent.seek(position: 10.seconds));
              },
            ),
          ],
        ),
        SizedBox(height: 5),
        MediaInfoButtons(video: audioService.currentlyPlaying),
        SizedBox(height: 10)
      ],
    );
  }

  Widget playerSlider(AudioService audioService) {
    currentPositionStream = audioService.currentPosition;
    durationStream = audioService.duration;
    bufferedPositionStream = audioService.bufferedPosition;

    return StreamBuilder<(Duration, Duration?, Duration)>(
      stream: Rx.combineLatest3(
        currentPositionStream,
        durationStream,
        bufferedPositionStream,
        (c, d, e) => (c, d, e),
      ),
      builder: (
        context,
        snapshot,
      ) {
        Duration currentPosition = snapshot.data?.$1 ?? Duration.zero;
        Duration duration = snapshot.data?.$2 ?? Duration.zero;
        Duration bufferedPosition = snapshot.data?.$3 ?? Duration.zero;

        return Column(
          children: [
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 2,
              ),
              child: Slider(
                value: currentPosition.inSeconds.toDouble(),
                min: 0,
                max: duration.inSeconds.toDouble(),
                secondaryTrackValue: bufferedPosition.inSeconds.toDouble(),
                secondaryActiveColor: Colors.grey.shade400,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${currentPosition.inHours}:${currentPosition.inMinutes}:${currentPosition.inSeconds.remainder(60)}",
                ),
                Text(
                  "${duration.inHours}:${duration.inMinutes.remainder(60)}:${duration.inSeconds.remainder(60)}",
                )
              ],
            )
          ],
        );
      },
    );
  }
}
