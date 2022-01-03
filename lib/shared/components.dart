// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.red,
}) =>
    Container(
      width: width,
      color: background,
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
