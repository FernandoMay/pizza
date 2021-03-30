import 'package:flutter/material.dart';
import 'package:pizza/constants.dart';
import 'package:pizza/mobileview.dart';
import 'package:pizza/webview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homie(),
    );
  }
}

class Homie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bglightColor,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth >= 800) {
            return WebView();
          } else {
            return MobileView();
          }
        },
      ),
    );
  }
}
