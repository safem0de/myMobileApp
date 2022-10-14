import 'constants/setting.dart';
import 'pages/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/route.dart' as custom_route;
import 'pages/login/login_page.dart';
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
      home: FutureBuilder<SharedPreferences>(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
          if (snapshot.hasData) {
            final token = snapshot.data?.getString(Setting.TOKEN_PREF) ?? '';
            if (token.isNotEmpty) {
              return const HomePage();
            }
            return const LoginPage();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
