// import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class RunAndCheck extends StatefulWidget {
  const RunAndCheck({super.key});

  @override
  State<RunAndCheck> createState() => _RunAndCheckState();
}

class _RunAndCheckState extends State<RunAndCheck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barcode & QR Scanner"),
      ),
      body: Center(
        child: Column(
          children: [
            _buildscan(context: context),
            _buildSlotCheck(),
            const SizedBox(height: 8.0),
            _buildStatorCheck(),
            _buildSubmit(),
          ],
        ),
      ),
    );
  }

  TextButton _buildscan({required BuildContext context}) {
    return TextButton(
      onPressed: () async {
        // scanQRCode(context: context);
        var res = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SimpleBarcodeScannerPage(
                isShowFlashIcon: true,
              ),
            ));
        setState(() {
          if (res is String) {
            print(res);
          }
        });
      },
      child: const Text('Scan'),
    );
  }

  Card _buildSlotCheck() {
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

  Card _buildStatorCheck() {
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

  TextButton _buildSubmit() {
    return TextButton(
      onPressed: () {},
      child: const Text('Submit'),
    );
  }

  // Future scanQRCode({required BuildContext context}) async {
  showAlertDialog({required BuildContext context, required String result}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text("Result"),
          content: Text(result),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Close"),
            )
          ],
        );
      },
    );
  }
}
