import 'dart:ui';

import 'package:flutter/cupertino.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
                // hintText: 'LOGIN',
                labelText: 'LOGIN',
                border: OutlineInputBorder(
                  borderRadius :BorderRadius.all(Radius.circular(4.0)),
                ),
                prefixIcon: Icon(Icons.email),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
