import 'package:flutter/material.dart';
import 'package:firstflutter/src/config/theme.dart' as custom_theme;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: custom_theme.Theme.gradient,
            ),
          ),
          Column(
            children: const [
              Text('header'),
              Text('form'),
              Text('forgot password'),
              Text('SSO'),
              Text('register'),
            ],
          )
        ],
      ),
    );
  }
}
