import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/register.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister()
    },
  ));
}