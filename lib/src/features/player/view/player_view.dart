import 'package:flutter/material.dart';
import 'package:midnight_suspense/bootstrap.dart';
import 'package:midnight_suspense/src/services/audio_service.dart';

class PlayerView extends StatefulWidget {
  const PlayerView({super.key});

  @override
  State<PlayerView> createState() => _PlayerViewState();
}

class _PlayerViewState extends State<PlayerView> {
  AudioService audioService = getIt<AudioService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: 'player_window',
            transitionOnUserGestures: true,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(
                  image: NetworkImage(
                    audioService.currentThumbnail.isNotEmpty
                        ? audioService.currentThumbnail
                        : 'https://via.placeholder.com/150',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text('Title',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              Text('Artist',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(audioService.isPlaying ? Icons.pause : Icons.play_arrow),
                onPressed: () {
                  audioService.playPauseToggle();
                },
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
