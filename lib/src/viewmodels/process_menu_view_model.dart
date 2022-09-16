import '../constants/asset.dart';
import 'package:flutter/material.dart';

class ProcessMenu {
  late String? title;
  late Image? image;
  late Function(BuildContext context)? onPressed;

  ProcessMenu({
    this.title,
    this.image,
    this.onPressed,
  });
}

class ProcessMenuInsertSlot {
  List<ProcessMenu> get item => <ProcessMenu>[
        ProcessMenu(
          title: 'Insert Slot',
          image: const Image(
            image: AssetImage(Asset.INSERT_SLOT_IMAGE),
          ),
          onPressed: (context) {
            Navigator.pop(context);
            debugPrint('Hi there');
          },
        ),
        ProcessMenu(
          title: 'Setup Slot',
          image: const Image(
            image: AssetImage(Asset.SETUP_SLOT_IMAGE),
          ),
          onPressed: (context) {
            Navigator.pop(context);
            debugPrint('Hi');
          },
        ),
        ProcessMenu(
          title: 'Stator Inventory',
          image: const Image(
            image: AssetImage(Asset.INVEN_SLOT_IMAGE),
          ),
          onPressed: (context) {
            Navigator.pop(context);
            debugPrint('Hi Inventory');
          },
        ),
      ];
}
