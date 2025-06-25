import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart'; // Make sure this file contains LoadByteHome widget

void main() {
  runApp(const LoadByteApp());
}

class LoadByteApp extends StatelessWidget {
  const LoadByteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ✅ Support mouse + touch drag for web scrolling
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),

      // ✅ Custom dark theme with Google Fonts
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F0F11),
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),

      // ✅ Entry point to your landing page
      home: const LoadByteHome(),
    );
  }
}
