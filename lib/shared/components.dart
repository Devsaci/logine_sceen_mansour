// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget? defaultButton() => Container(
      width: double.infinity,
      color: Colors.red,
      child: MaterialButton(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          // print(emailController.text);
          // print(passwordController.text);
        },
      ),
    );
