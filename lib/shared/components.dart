// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// 73. Reusable components
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 0.0,
  double height = 40,
  required Function() function,
  required String text,
}) =>
    Container(
      height: height,
      width: width,
      child: MaterialButton(
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
    );

Widget defaultFormField({
  required FormFieldValidator<String>? validate,
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefix,
  ValueChanged<String>? onSubmit,
  ValueChanged<String>? onChange,
}) =>
    TextFormField(
      validator: validate,
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
    );
