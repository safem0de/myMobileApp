import 'package:flutter/material.dart';
import 'package:firstflutter/src/config/theme.dart' as custom_theme;

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        margin: const EdgeInsets.fromLTRB(22.0, 0.0, 22.0, 0.0),
        elevation: 12,
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FormInput(),
        ),
      );

  Container _buildSubmitFormButton() => Container(
        width: 220,
        height: 50,
        decoration: const BoxDecoration(
          gradient: custom_theme.Theme.gradient,
        ),
      );
}

class FormInput extends StatelessWidget {
  const FormInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildUsername(),
        const Divider(
          height: 22,
          thickness: 1,
          indent: 12,
          endIndent: 12,
        ),
        _buildPassword(),
      ],
    );
  }

  TextField _buildPassword() => const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: 'Password',
          icon: Icon(
            Icons.lock_open,
            size: 22,
          ),
        ),
      );

  TextField _buildUsername() => const TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Employee No.',
            hintText: 'D9302',
            icon: Icon(
              Icons.account_box_rounded,
              size: 22,
            )),
      );
}
