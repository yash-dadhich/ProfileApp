import 'package:flutter/material.dart';
import 'package:portfolio_app/about.dart';
import 'package:portfolio_app/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'about',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
    },
  ));
}
