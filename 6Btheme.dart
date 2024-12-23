import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 18)),
  ),
);

void main() {
  runApp(MaterialApp(
    theme: appTheme,
    home: Scaffold(
      appBar: AppBar(title: Text('Themed Application')),
      body: Center(child: Text('Hello, Theme!')),
    ),
  ));
}
