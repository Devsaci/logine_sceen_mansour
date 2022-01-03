// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget defaultButton({
  required double width,
  required Color background ,
  required Function() function,
  required String text,

}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
    );
