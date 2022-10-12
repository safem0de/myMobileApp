import 'package:shared_preferences/shared_preferences.dart';

import '../../../config/route.dart' as custom_route;
import 'package:another_flushbar/flushbar.dart';
import '../../../constants/setting.dart';
import '../../../utils/regex_validation.dart';
import 'package:flutter/material.dart';
import '../../../config/theme.dart' as custom_theme;

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  String? _errorUsername;
  String? _errorPassword;

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildForm(),
        _buildSubmitFormButton(),
      ],
    );
  }

  Card _buildForm() => Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.only(bottom: 22, left: 22, right: 22),
        elevation: 12,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 24,
          ),
          child: FormInput(
            usernameController: usernameController,
            passwordController: passwordController,
            errorUsername: _errorUsername,
            errorPassword: _errorPassword,
          ),
        ),
      );
  void showAlertBar() {
    Flushbar(
      title: 'Username or Password is incorrect',
      message: 'Please try again.',
      icon: const Icon(
        Icons.error,
        size: 28.0,
        color: Colors.red,
      ),
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
    ).show(context);
  }

  void showLoading() {
    Flushbar(
      message: 'Loading...',
      showProgressIndicator: true,
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.GROUNDED,
    ).show(context);
  }

  void _onLogin() {
    String username = usernameController.text;
    String password = passwordController.text;

    _errorUsername = null;
    _errorPassword = null;

    if (!EmployeeSubmitRegexValidator().isValid(username)) {
      _errorUsername = 'The employee code must be a valid';
      debugPrint(_errorUsername);
    }

    if (password.length < 8) {
      _errorPassword = 'Password incorrect';
      debugPrint(_errorPassword);
    }

    if (_errorUsername == null && _errorPassword == null) {
      showLoading();
      Future.delayed(const Duration(seconds: 2)).then((value) async {
        Navigator.pop(context);
        if (username == 'D9302' && password == '12345678') {
          // print('success');
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => HomePage(
          //       username: username,
          //     ),
          //   ),
          // );
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString(Setting.TOKEN_PREF, '_token');
          await prefs.setString(Setting.USERNAME_PREF, username);
          // print(prefs);
          // ignore: use_build_context_synchronously
          await Navigator.pushReplacementNamed(
            context,
            custom_route.Route.home,
            // arguments: {username: username},
          );
        } else {
          showAlertBar();
          setState(() {});
        }
      });
    } else {
      setState(() {});
    }
  }

  Container _buildSubmitFormButton() => Container(
        width: 220,
        height: 50,
        decoration: _boxDecoration(),
        child: TextButton(
          onPressed: _onLogin,
          child: const Text(
            'LOGIN',
            style: TextStyle(
              color: Colors.red,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      );

  BoxDecoration _boxDecoration() {
    const gradientStart = custom_theme.Theme.gradientStart;
    const gradientEnd = custom_theme.Theme.gradientEnd;

    boxShadowItem(Color c) => const BoxShadow(
          color: gradientEnd,
          offset: Offset(2.0, 6.0),
          blurRadius: 20.0,
        );

    return BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        boxShadowItem(gradientStart),
        boxShadowItem(gradientEnd),
      ],
      gradient: const LinearGradient(
        colors: [
          gradientEnd,
          gradientStart,
        ],
        begin: FractionalOffset(0, 0),
        end: FractionalOffset(1, 1),
        stops: [0.0, 1.0],
      ),
    );
  }
}

class FormInput extends StatefulWidget {
  final TextEditingController? usernameController;
  final TextEditingController? passwordController;
  final String? errorUsername;
  final String? errorPassword;

  const FormInput({
    Key? key,
    required this.usernameController,
    required this.passwordController,
    required this.errorUsername,
    required this.errorPassword,
  }) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  late bool _obscureTextPassword;
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    _obscureTextPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUsername(),
        const Divider(
          height: 22,
          thickness: 2,
          indent: 12,
          endIndent: 12,
        ),
        _buildPassword(),
      ],
    );
  }

  TextField _buildPassword() => TextField(
        focusNode: _passwordFocusNode,
        controller: widget.passwordController,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Password',
          hintText: '8 Characters password',
          errorText: widget.errorPassword,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          icon: const Icon(
            Icons.lock_open,
            size: 22,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
              icon: _obscureTextPassword
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _obscureTextPassword = !_obscureTextPassword;
                });
              }),
        ),
        obscureText: _obscureTextPassword,
      );

  TextField _buildUsername() => TextField(
        controller: widget.usernameController,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Employee No.',
          hintText: '5 Characters',
          errorText: widget.errorUsername,
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          icon: const Icon(
            Icons.account_box_rounded,
            size: 22,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                widget.usernameController!.clear();
              }),
        ),
        onSubmitted: (String value) {
          FocusScope.of(context).requestFocus(_passwordFocusNode);
        },
        textInputAction: TextInputAction.next,
      );
}
