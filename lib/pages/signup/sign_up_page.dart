import 'package:auth_ui/pages/signup/components/body.dart';
import 'package:auth_ui/themes.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: blueColor,
      body: Body(),
    );
  }
}
