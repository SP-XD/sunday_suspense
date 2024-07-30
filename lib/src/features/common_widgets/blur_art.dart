import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:midnight_suspense/src/gen/assets.gen.dart';

class blurArt extends StatelessWidget {
  const blurArt({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100, tileMode: TileMode.decal),
      child: imageUrl.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.7),
            )
          : Assets.images.hauntedHouseFrame1.image(
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.7),
            ),
    );
  }
}
