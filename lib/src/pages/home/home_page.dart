import 'package:intl/intl.dart';

import '../login/login_page.dart';

import '../../constants/asset.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.username});

  final String? username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final DateTime now = DateTime.now();
  final String year = DateFormat('yyyy').format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MainMenu',
          style: TextStyle(fontSize: 30),
        ),
        actions: <Widget>[
          SizedBox(
            child: PopupMenuButton(
              position: PopupMenuPosition.under,
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: ListTile(
                    leading: const Icon(
                      Icons.lock_person,
                      size: 30,
                    ),
                    title: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Center'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image(image: AssetImage(Asset.LOGO_IMAGE)),
            ),
            ListTile(
              leading: const Icon(Icons.merge),
              title: const Text(
                'Insert Slot',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_paint_rounded),
              title: const Text(
                'Painting',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.change_circle_outlined),
              title: const Text(
                'Honing',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.file_download_outlined),
              title: const Text(
                'Rotor Assembly',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.precision_manufacturing_outlined),
              title: const Text(
                'Cutting Flange',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.engineering),
              title: const Text(
                'Engineering',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text(
                'Materials Control',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.factory_outlined),
              title: const Text(
                'Production Control',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.handyman),
              title: const Text(
                'Maintenance',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.groups_rounded),
              title: const Text(
                'Overtime',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.square_foot),
              title: const Text(
                'IQC Incoming',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.troubleshoot),
              title: const Text(
                'QC Patrol',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.biotech),
              title: const Text(
                'QA Outgoing',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: const Text(
                'Purchase',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.psychology),
              title: const Text(
                'ISO & Training',
                style: TextStyle(fontSize: 22),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 1,
            ),
            Align(
              alignment: Alignment.center,
              child: Text('© Copyright by Safem0de ${year.toString()}\t\t'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
