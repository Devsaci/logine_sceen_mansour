// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:logine_sceen/shared/components.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN SCREEN'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                defaultFormField(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'email must not be empty';
                    }
                    return null;
                  },
                  label: 'Email',
                  prefix: Icons.email,
                  onSubmit: (value) {
                    print(value);
                  },
                  onChange: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  //76. Obscure Text _____ SetSate _____
                  isPassword: isPassword,
                  suffixPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Password is too short';
                    }
                    return null;
                  },
                  label: 'Password',
                  prefix: Icons.lock,
                  suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                  onSubmit: (value) {
                    print(value);
                  },
                  onChange: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                defaultButton(
                  height: 60,
                  radius: 15.0,
                  text: 'Login',
                  function: () {
                    if (formKey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                defaultButton(
                  height: 50,
                  width: 200,
                  radius: 50,
                  background: Colors.amber,
                  text: 'RegisTRation',
                  isUpperCase: false,
                  function: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\'t have an account",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Register Now"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
