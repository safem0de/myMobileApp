import 'package:firstflutter/src/pages/home/grid_app.dart';
import 'package:intl/intl.dart';
import '../../viewmodels/menu_view_model.dart';
import '../../constants/asset.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
                        Navigator.of(context).pop();
                        showDialogLogout(context);
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
      body: const GridApp(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: _buildProfile(),
            ),
            ..._buildMainMenu(),
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

  Future<void> showDialogLogout(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          icon: const Icon(
            Icons.warning_amber_rounded,
            color: Colors.red,
            size: 50.0,
          ),
          title: const Text('Logout Confirmation'),
          content: const Text(
            'Are you sure to logout?\n'
            'Please click confirm.\n'
            '\n'
            'ต้องการออกจากระบบ? กรุณาปุ่มกดยืนยัน.\n',
            style: TextStyle(fontSize: 18.0),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text(
                'Confirm',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  UserAccountsDrawerHeader _buildProfile() => const UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Asset.LOGO_IMAGE),
          ),
        ),
        accountName: Text(''),
        accountEmail: Text('User : D9302'),
      );

  List<ListTile> _buildMainMenu() => MenuViewModel()
      .item
      .map(
        (item) => ListTile(
          title: Text(
            item.title,
            style: const TextStyle(fontSize: 22),
          ),
          leading: Icon(
            item.icon,
            color: item.iconColor,
          ),
          onTap: () {
            item.onTap!(context);
          },
        ),
      )
      .toList();

  Container chooseColumn(String title) {
    switch (title) {
      case 'Insert slot':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('Insert slot'),
          );
        }
      case 'Painting':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('Painting'),
          );
        }
      case 'Honing':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('No Data'),
          );
        }
      case 'Rotor assembly':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('Rotor assembly'),
          );
        }
      case 'Cutting flange':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('Cutting flange'),
          );
        }
      case 'Engineering':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('No Data'),
          );
        }
      case 'Materials control':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('No Data'),
          );
        }
      case 'Productions control':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('No Data'),
          );
        }
      case 'Maintenance':
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('No Data'),
          );
        }
      default:
        {
          return Container(
            alignment: Alignment.center,
            child: const Text('No Data'),
          );
        }
    }
  }
}
