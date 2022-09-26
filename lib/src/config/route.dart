import '../pages/insert_slot/run_check.dart';
import '../pages/home/home_page.dart';
import '../pages/insert_slot/insert_slot.dart';
import '../pages/login/login_page.dart';
import 'package:flutter/material.dart';

class Route {
  static const home = '/home';
  static const login = '/login';
  static const insertSlot = "/insert_slot";
  static const runAndCheck = "/insert_slot/run_check";

  static Map<String, WidgetBuilder> getAll() => _route;

  static final Map<String, WidgetBuilder> _route = {
    home: (context) => const HomePage(),
    login: (context) => const LoginPage(),
    insertSlot: (context) => const InsertSlot(),
    runAndCheck: (context) => const RunAndCheck(),
  };
}
