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
        _buildIcon(),
        _buildName(),
      ],
    );
  }

  Stack _buildIcon() {
    final height = maxHeight * 0.85;
    return Stack(
      // fit: StackFit.expand,
      children: [
        SizedBox(
          height: height,
          child: IconButton(
            splashRadius: maxHeight * 0.5,
            iconSize: maxHeight,
            icon: CircleAvatar(
              maxRadius: maxHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  Asset.SETUP_SLOT_IMAGE,
                  height: maxHeight,
                ),
              ),
            ),
            onPressed: () {
              // do something when the button is pressed
              debugPrint('Hi there');
            },
          ),
        ),
      ],
    );
  }

  Expanded _buildName() {
    return const Expanded(
      child: Text(
        'test',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
