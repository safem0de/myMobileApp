import '../../../constants/asset.dart';
import 'package:flutter/material.dart';

class ProgramItem extends StatelessWidget {
  final double maxHeight;
  const ProgramItem(this.maxHeight, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // _buildIcon(),
        _buildName(),
      ],
    );
  }

  // _buildIcon() {}

  Text _buildName() {
    return const Text(
      'test',
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
