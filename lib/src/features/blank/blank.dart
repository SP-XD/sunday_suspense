import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MissingView extends StatelessWidget {
  const MissingView({super.key});

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
          '🦉 404 This page doesn\'t exist',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
