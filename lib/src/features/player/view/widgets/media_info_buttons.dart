import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:midnight_suspense/src/constants/constants.dart';
import 'package:midnight_suspense/src/data/models/video_model.dart';
import 'package:midnight_suspense/src/data/repositories/videos_repository.dart';
import 'package:midnight_suspense/src/features/common_widgets/loading.dart';

class MediaInfoButtons extends StatelessWidget {
  const MediaInfoButtons({
    super.key,
    required this.video,
  });

  final VideoModel? video;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 45,
      decoration: BoxDecoration(
        // gradient: SpxdAppConstants.GrayToDarkerGrayGradient,
        border: Border.all(
          color: SpxdAppConstants.greyDark,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            playerInfoButton(context: context, videoId: video?.videoId?.value ?? ""),
            VerticalDivider(width: 0.5, color: SpxdAppConstants.greyDark),
            shareLinkButton(
              context: context,
              youtube_link: video?.youtubeUrl ?? "",
              in_app_link: video?.appUrl ?? "",
            ),
            // VerticalDivider(width: 0.5, color: SpxdAppConstants.greyDark),
            // playerInfoButton(context: context, videoId: video?.videoId?.value ?? ""),
          ],
        ),
      ),
    );
  }

  Widget playerInfoButton({required BuildContext context, required String videoId}) {
    return Center(
      child: IconButton(
        onPressed: () {
          Scaffold.of(context).showBottomSheet(
            backgroundColor: Colors.black54,
            enableDrag: true,
            showDragHandle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            (context) {
              return Container(
                height: 500,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
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
            },
          );
        },
        icon: Icon(FontAwesome.info_solid, size: 15, color: Colors.white),
      ),
    );
  }

  Widget shareLinkButton({
    required BuildContext context,
    required String youtube_link,
    required String in_app_link,
  }) {
    return Center(
      child: IconButton(
        onPressed: () {
          Scaffold.of(context).showBottomSheet(
            backgroundColor: Colors.black,
            enableDrag: true,
            showDragHandle: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            (context) {
              return Container(
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  //   border: Border.all(color: SpxdAppConstants.greyDark),
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text("Youtube link: $youtube_link"),
                    SizedBox(height: 10),
                    Text("In app link: $in_app_link"),
                  ],
                ),
              );
            },
          );
        },
        icon: Icon(FontAwesome.link_solid, size: 15, color: Colors.white),
      ),
    );
  }
}
