import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widget'),
        ),
        body: Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, I am a Stateless Widget!',
      style: TextStyle(fontSize: 24),
    );
  }
}
