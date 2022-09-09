import 'package:flutter/cupertino.dart';

class Theme {
  const Theme();

  static const Color gradientStart = Color(0xFF58c0de);
  static const Color gradientEnd = Color(0xFFceb7cf);

  static const gradient = LinearGradient(
    colors: [gradientStart, gradientEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );
}
