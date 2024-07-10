import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:midnight_suspense/app/app.dart';
import 'package:midnight_suspense/bootstrap.dart';

void main() {
  bootstrap(
    () => DevicePreview(
      backgroundColor: Colors.black,
      builder: (context) {
        return const App();
      },
    ),
  );
}
