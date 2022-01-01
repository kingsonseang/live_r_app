import 'package:flutter/material.dart';
import 'SplashScreen.dart';

void main() {

  runApp(
    const MaterialApp(
      // hide the debug banner
      debugShowCheckedModeBanner: false,
      // move to the splash screen on load
      home: Splash(),
    ),
  );
}
