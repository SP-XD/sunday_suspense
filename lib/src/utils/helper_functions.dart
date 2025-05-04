import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

Future<PaletteGenerator> getPalette(ImageProvider value) async {
  return await PaletteGenerator.fromImageProvider(
    value,
    // filters: [avoidRedBlackWhitePaletteFilter],
    targets: [
      PaletteTarget(minimumLightness: 0.5),
    ],
  );
}

/// A basic [PaletteFilter], which rejects colors near black, white and low
/// saturation red.
///
/// Use this as an element in the `filters` list given to [PaletteGenerator.fromImage].
///
/// See also:
///  * [PaletteGenerator], a class for selecting color palettes from images.
bool avoidRedBlackWhitePaletteFilter(HSLColor color) {
  bool isBlack(HSLColor hslColor) {
    const double blackMaxLightness = 0.3;
    return hslColor.lightness <= blackMaxLightness;
  }

  bool isWhite(HSLColor hslColor) {
    const double whiteMinLightness = 0.95;
    return hslColor.lightness >= whiteMinLightness;
  }

  // Returns true if the color is close to the red side of the I line.
  bool isNearRedILine(HSLColor hslColor) {
    const double redLineMinHue = 10.0;
    const double redLineMaxHue = 37.0;
    const double redLineMaxSaturation = 0.82;
    return hslColor.hue >= redLineMinHue &&
        hslColor.hue <= redLineMaxHue &&
        hslColor.saturation <= redLineMaxSaturation;
  }

  return !isBlack(color);
}
