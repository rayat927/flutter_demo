import 'package:flutter/material.dart';
import 'package:project_tuts/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => TabNavigator(),
    },
  ));
}


