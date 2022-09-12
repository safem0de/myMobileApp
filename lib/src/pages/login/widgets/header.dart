import '../../../constants/asset.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      child: const Image(
        image: AssetImage(Asset.LOGO_IMAGE),
        height: 160,
      ),
    );
  }
}