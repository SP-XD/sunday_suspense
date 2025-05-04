import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// //Add this CustomPaint widget to the Widget Tree
// CustomPaint(
//     size: Size(WIDTH, (WIDTH*0.6132930513595166).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//     painter: RPSCustomPainter(),
// )

class SquareBoxBottomGlowGradientCustomPainter extends CustomPainter {
  const SquareBoxBottomGlowGradientCustomPainter({this.color = Colors.red});
  final Color color;

  Color _getDarkerColor(Color color) {
    HSVColor hsvColor = HSVColor.fromColor(color);
    return hsvColor.withValue(hsvColor.value * 0.5).toColor();
  }

  Color _getSaturatedColor(Color color) {
    HSVColor hsvColor = HSVColor.fromColor(color);
    return hsvColor.withSaturation(0.5).withValue(0.9).toColor();
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    Color primaryColor = _getSaturatedColor(color);
    Color darkerColor = _getDarkerColor(primaryColor);

    paint_0_fill.shader = ui.Gradient.radial(
      Offset(size.width * 0.5, size.height * 0.9),
      size.width * 0.45,
      //   [Color(0xff410000).withOpacity(1), Color(0xff1C0000).withOpacity(1)],
      [darkerColor.withAlpha(120), darkerColor.withAlpha(30)],
      [0, 1],
    );
    canvas.drawRRect(
      RRect.fromRectAndCorners(
        Rect.fromLTWH(size.width * 0.01208459, 0, size.width * 0.9758308, size.height * 0.9605911),
        bottomRight: Radius.circular(size.width * 0.07552870),
        bottomLeft: Radius.circular(size.width * 0.07552870),
        topLeft: Radius.circular(size.width * 0.07552870),
        topRight: Radius.circular(size.width * 0.07552870),
      ),
      paint_0_fill,
    );

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.003510574;
    paint_1_stroke.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, 0),
        Offset(size.width * 0.5000000, size.height * 0.9605911),
        // [Color(0xff000000).withOpacity(0), Color(0xff800000).withOpacity(1)],
        [darkerColor.withOpacity(0), darkerColor.withOpacity(1)],
        [0, 1]);
    canvas.drawRRect(
      RRect.fromRectAndCorners(
          Rect.fromLTWH(size.width * 0.01283988, size.height * 0.001231527, size.width * 0.9743202,
              size.height * 0.9581281),
          bottomRight: Radius.circular(size.width * 0.07477341),
          bottomLeft: Radius.circular(size.width * 0.07477341),
          topLeft: Radius.circular(size.width * 0.07477341),
          topRight: Radius.circular(size.width * 0.07477341)),
      paint_1_stroke,
    );

    // Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    // paint_1_fill.color = Color(0xff000000).withOpacity(1.0);
    // canvas.drawRRect(
    //     RRect.fromRectAndCorners(
    //         Rect.fromLTWH(size.width * 0.01283988, size.height * 0.001231527, size.width * 0.9743202,
    //             size.height * 0.9581281),
    //         bottomRight: Radius.circular(size.width * 0.07477341),
    //         bottomLeft: Radius.circular(size.width * 0.07477341),
    //         topLeft: Radius.circular(size.width * 0.07477341),
    //         topRight: Radius.circular(size.width * 0.07477341)),
    //     paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9244713, size.height * 0.9593547);
    path_2.cubicTo(size.width * 0.9244713, size.height * 0.9654778, size.width * 0.7357825,
        size.height * 0.9704433, size.width * 0.5030211, size.height * 0.9704433);
    path_2.cubicTo(size.width * 0.2702607, size.height * 0.9704433, size.width * 0.08157100,
        size.height * 0.9654778, size.width * 0.08157100, size.height * 0.9593547);
    path_2.cubicTo(size.width * 0.08157100, size.height * 0.9532266, size.width * 0.2702607,
        size.height * 0.9565813, size.width * 0.5030211, size.height * 0.9565813);
    path_2.cubicTo(size.width * 0.7357825, size.height * 0.9565813, size.width * 0.9244713,
        size.height * 0.9532266, size.width * 0.9244713, size.height * 0.9593547);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.08157100, size.height * 0.9593547),
      Offset(size.width * 0.9244713, size.height * 0.9593547),
      [
        // Color(0xff780000).withOpacity(1),
        darkerColor.withOpacity(1),
        primaryColor.withOpacity(1),
        darkerColor.withOpacity(1),
        // Color(0xff780000).withOpacity(1)
      ],
      [0, 0.51, 1],
    );
    canvas.drawPath(path_2, paint_2_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
