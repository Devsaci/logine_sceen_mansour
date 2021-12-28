import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGINE SSCREEN'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children:   [
            Text(
              'Login',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            TextFormField(),


          ],
        ),
      ),
    );
  }
}
