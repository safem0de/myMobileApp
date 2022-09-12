import 'package:firstflutter/src/pages/login/widgets/single_sign_on.dart';
import 'package:flutter/material.dart';

class SingleSignOn {
  late IconData icon;
  late Color backgroundColor;
  late VoidCallback onPress;

  SingleSignOn({
    required this.icon,
    required this.backgroundColor,
    required this.onPress,
  });
}

class SingleSignOnViewModel {
  List<SingleSignOn> get items => <SingleSignOn>[
        SingleSignOn(
            icon: Icons.apple,
            backgroundColor: const Color(0xFF323232),
            onPress: () {
              //todo
            }),
        SingleSignOn(
            icon: Icons.mail_outlined,
            backgroundColor: const Color(0xFFd7483b),
            onPress: () {
              //todo
            }),
        SingleSignOn(
            icon: Icons.facebook,
            backgroundColor: const Color(0xFF4063ae),
            onPress: () {
              //todo
            }),
        SingleSignOn(
            icon: Icons.phone,
            backgroundColor: const Color(0xFF21b54d),
            onPress: () {
              //todo
            }),
      ];
}
