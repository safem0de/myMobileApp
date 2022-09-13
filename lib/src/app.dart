import 'package:firstflutter/src/config/route.dart' as custom_route;
import 'package:firstflutter/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: custom_route.Route.getAll(),
      debugShowCheckedModeBanner: false,
      title: 'MECHA II\nby Safem0de',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}
