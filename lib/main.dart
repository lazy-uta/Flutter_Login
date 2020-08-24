import 'package:flutter/material.dart';
import 'package:login/ui/home.dart';
import 'package:login/ui/loading.dart';
import 'package:login/ui/login.dart';
import 'package:login/ui/register.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/' : (context) => Loading(),
      '/register' : (context) => Register(),
      '/home' : (context) => Home(),
      '/login' : (context) => Login()
    },
  ));
}


