import 'package:firstflutter/src/pages/home/home_page.dart';
import 'package:firstflutter/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class Route{
  static const home = '/home';
  static const login = '/login';

  static final Map<String, WidgetBuilder> _route = {
    // home: (context) => HomePage(username: username),
    login: (context) => const LoginPage(),
  };
}