import 'package:flutter/material.dart';

class SignInTextFormField extends StatelessWidget {
  const SignInTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE0E0E0), width: 2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE0E0E0), width: 2),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE0E0E0), width: 2),
        ),
      ),
    );
  }
}
