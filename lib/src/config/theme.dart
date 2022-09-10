import 'package:flutter/cupertino.dart';

class Theme {
  const Theme();

  static const Color gradientStart = Color(0xFF859398);
  static const Color gradientEnd = Color(0xFF283048);

  static const gradient = LinearGradient(
    colors: [gradientStart, gradientEnd],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.0, 1.0],
  );
}
