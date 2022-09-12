import 'widgets/header.dart';
import 'widgets/single_sign_on.dart';
import 'widgets/login_form.dart';
import 'package:flutter/material.dart';
import '../../config/theme.dart' as custom_theme;

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
          SingleChildScrollView(
            child: Column(
              children: [
                const Header(),
                const LoginForm(),
                const SizedBox(height: 60),
                _buildFlatButton(
                  'forgot password',
                  onPressed: () {
                    // Todo
                  },
                ),
                const SingleSignOn(),
                _buildFlatButton(
                  'register',
                  onPressed: () {
                    // Todo
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextButton _buildFlatButton(
    String text, {
    required VoidCallback onPressed,
    double fontSize = 16.0,
  }) =>
      TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: fontSize),
        ),
      );
}
