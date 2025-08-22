import 'package:flutter/material.dart';
import 'package:flutter_study/pages/choose_location.dart';
import 'package:flutter_study/pages/loading.dart';
import 'pages/home.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ),
  );
}
