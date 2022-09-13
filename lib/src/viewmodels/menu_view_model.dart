import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu {
  late String title;
  late IconData icon;
  late Color iconColor;
  late Function(BuildContext context)? onTap;

  Menu({
    required this.title,
    required this.icon,
    required this.iconColor,
    this.onTap,
  });
}

class MenuViewModel {
  List<Menu> get item => <Menu>[
        Menu(
          title: 'Insert slot',
          icon: Icons.merge_type_outlined,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Painting',
          icon: Icons.format_paint_rounded,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Honing',
          icon: Icons.change_circle_outlined,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Rotor assembly',
          icon: Icons.file_download_outlined,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Cutting flange',
          icon: Icons.precision_manufacturing_outlined,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Engineering',
          icon: Icons.engineering,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Materials control',
          icon: Icons.category,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Productions control',
          icon: Icons.factory_outlined,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Maintenance',
          icon: Icons.handyman,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Manpower',
          icon: Icons.groups_rounded,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'IQC incoming',
          icon: Icons.square_foot,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'QC patrol',
          icon: Icons.troubleshoot,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'QA outgoing',
          icon: Icons.biotech,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'Purchase',
          icon: Icons.shopping_basket,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
        Menu(
          title: 'ISO & Training',
          icon: Icons.psychology,
          iconColor: Colors.blue,
          onTap: (context) {
            Navigator.pop(context);
          },
        ),
      ];
}
