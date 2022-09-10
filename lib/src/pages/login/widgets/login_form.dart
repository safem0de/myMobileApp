import 'package:flutter/material.dart';
import 'package:firstflutter/src/config/theme.dart' as custom_theme;

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

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
          ),
        ),
      );

  Container _buildSubmitFormButton() => Container(
        width: 220,
        height: 50,
        decoration: _boxDecoration(),
        child: TextButton(
          onPressed: () {
            print(usernameController.text);
            print(passwordController.text);
          },
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

  const FormInput({
    Key? key,
    required this.usernameController,
    required this.passwordController,
  }) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
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
        controller: widget.passwordController,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          labelText: 'Password',
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          icon: Icon(
            Icons.lock_open,
            size: 22,
            color: Colors.black,
          ),
        ),
      );

  TextField _buildUsername() => TextField(
        controller: widget.usernameController,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: 'Employee No.',
            labelStyle: TextStyle(
              color: Colors.black,
            ),
            icon: Icon(
              Icons.account_box_rounded,
              size: 22,
              color: Colors.black,
            )),
      );
}
