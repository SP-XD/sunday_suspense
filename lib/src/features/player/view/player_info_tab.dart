import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';

class PlayerInfoTab extends StatelessWidget {
  const PlayerInfoTab({super.key, required this.videoId});

  final String videoId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          Scaffold.of(context).showBottomSheet(
              backgroundColor: Colors.black,
              enableDrag: true,
              showDragHandle: true,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)), (context) {
            return Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.black,
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: FutureBuilder(
                  future: context.read<VideosRepository>().getVideoDescription(videoId),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong :(");
                    } else if (snapshot.hasData) {
                      final String data = snapshot.data as String;
                      return Text(data);
                    }
                    return Center(child: loadingWidget());
                  },
                ),
              ),
            );
          });
        },
        icon: Icon(Icons.info_outline, color: Colors.white),
      ),
    );
  }
}
