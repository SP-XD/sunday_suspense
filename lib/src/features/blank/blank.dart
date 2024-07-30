import 'package:flutter/material.dart';

class BlankView extends StatelessWidget {
  const BlankView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            // hex code color
            Color.fromRGBO(59, 0, 0, 0.898),
          ],
          stops: [0.8, 0.99],
        ),
      ),
      child: Center(
        child: Text(
          'Blank View',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
