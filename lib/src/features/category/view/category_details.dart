import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/custom_painters/square_box_bottom_glow_gradient.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({super.key, required this.title, required this.language});
  final String title;
  final String language;

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Hero(
              tag: widget.title,
              child: Material(
                type: MaterialType.transparency,
                child: CustomPaint(
                  //Add this CustomPaint widget to the Widget Tree
                  size: Size(400, 203),
                  painter: SquareBoxBottomGlowGradientCustomPainter(color: Colors.blueGrey),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "\n\n" + widget.title,
                          style: GoogleFonts.creepster(color: Colors.blueGrey),
                        ),
                        Text(
                          widget.language,
                          style: GoogleFonts.ptSerif(color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
