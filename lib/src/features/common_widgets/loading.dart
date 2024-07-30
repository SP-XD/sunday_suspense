import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget loadingWidget({double size = 30}) {
  return Center(child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.red, size: size));
}
