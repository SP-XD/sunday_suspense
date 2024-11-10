import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';
// import 'package:palette_generator/palette_generator.dart';

class BlurArtWidget extends StatelessWidget {
  BlurArtWidget({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

//   final ImageProvider image;

//   Future<PaletteGenerator> getPalette(ImageProvider value) async {
//     return await PaletteGenerator.fromImageProvider(value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: getPalette(image),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             PaletteGenerator paletteGenerator = snapshot.data as PaletteGenerator;

//             return DecoratedBox(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(150),
//                 boxShadow: [
//                   //   BoxShadow(
//                   //     color: paletteGenerator.darkVibrantColor?.color ?? Colors.black,
//                   //     blurRadius: 150,
//                   //     spreadRadius: 10,
//                   //     offset: Offset(10, 20),
//                   //   ),
//                   //   BoxShadow(
//                   //     color: paletteGenerator.vibrantColor?.color ?? Colors.black,
//                   //     blurRadius: 150,
//                   //     spreadRadius: 0,
//                   //     offset: Offset(0, 100),
//                   //   ),
//                   //   BoxShadow(
//                   //     color: paletteGenerator.darkMutedColor?.color ?? Colors.black,
//                   //     blurRadius: 150,
//                   //     spreadRadius: 0,
//                   //     offset: Offset(0, 280),
//                   //   ),
//                 ],
//               ),
//             );
//           }

//           return SizedBox.shrink();
//         });
//   }

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100, tileMode: TileMode.decal),
      child: imageUrl.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.5),
            )
          : Assets.images.hauntedHouseFrame1.image(
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.5),
            ),
    );
  }
}
