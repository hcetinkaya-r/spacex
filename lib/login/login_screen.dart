import 'package:flutter/material.dart';
import 'package:spacex/login/login_body.dart';
import 'package:spacex/login/login_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () {FocusScope.of(context).requestFocus(FocusNode());},
          child: LoginBody(pageName: 'Login', formBody: LoginForm())),
    );
  }
}
