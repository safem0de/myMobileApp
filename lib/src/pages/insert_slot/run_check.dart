import 'package:flutter/material.dart';

class RunAndCheck extends StatelessWidget {
  const RunAndCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barcode & QR Scanner"),
      ),
      body: Center(
        child: Column(
          children: [
            _buildscan(),
            _buildslotcheck(),
            _buildstatorcheck(),
          ],
        ),
      ),
    );
  }

  TextButton _buildscan() {
    return TextButton(
      onPressed: () {},
      child: const Text('Scan'),
    );
  }

  _buildslotcheck() {
    return Container(
      child: Card(
        child: Column(),
      ),
    );
  }

  _buildstatorcheck() {
    return;
  }
}
