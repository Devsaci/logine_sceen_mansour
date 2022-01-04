// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  required Function() function,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        child: Text(
          isUpperCase ? text.toUpperCase(): text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
    );
