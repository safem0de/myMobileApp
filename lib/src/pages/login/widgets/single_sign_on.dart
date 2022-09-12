import '../../../viewmodels/single_sign_on_view_model.dart';
import 'package:flutter/material.dart';

class SingleSignOn extends StatelessWidget {
  const SingleSignOn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildDivider(),
        const SizedBox(height: 12),
        _buildSingleSignOnButton(),
      ],
    );
  }

  Row _buildDivider() {
    final gradientColor = [Colors.white10, Colors.white];
    line(List<Color> c) => Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: c,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: const [0.0, 1.0],
            ),
          ),
          width: 80.0,
          height: 1.0,
        );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        line(gradientColor),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'or',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        line(gradientColor.reversed.toList()),
      ],
    );
  }

  Padding _buildSingleSignOnButton() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: SingleSignOnViewModel()
              .items
              .map(
                (item) => FloatingActionButton(
                  onPressed: () {},
                  heroTag: item.icon.toString(),
                  backgroundColor: item.backgroundColor,
                  child: Icon(
                    item.icon,
                    color: Colors.white,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
