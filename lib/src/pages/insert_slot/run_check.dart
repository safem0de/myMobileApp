import 'package:flutter/material.dart';

class RunAndCheck extends StatelessWidget {
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
            const SizedBox(height: 8.0),
            _buildstatorcheck(),
            _buildsubmit(),
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

  Card _buildslotcheck() {
    return Card(
      margin: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
      ),
      color: Colors.tealAccent,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'WOS Check',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            color: Colors.white70,
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Scan Stator Assy No.',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text('Stator No.'),
                      Text('Insulator_1'),
                      Text('Insulator_2'),
                      Text('SAP_Stator No.'),
                      Text('SAP_Insulator_1'),
                      Text('SAP_Insulator_2'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text('.............'),
                      Text('.............'),
                      Text('.............'),
                      Text('.............'),
                      Text('.............'),
                      Text('.............'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Card _buildstatorcheck() {
    return Card(
      margin: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
      ),
      color: Colors.tealAccent,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Label Check',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            color: Colors.white70,
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Scan Stator No.',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            color: Colors.white70,
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Qty',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text('Stator No.'),
                      Text('SAP_Stator No.'),
                      Text('Quantity/Tray'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text('.............'),
                      Text('.............'),
                      Text('.............'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton _buildsubmit() {
    return TextButton(
      onPressed: () {},
      child: const Text('Submit'),
    );
  }
}
