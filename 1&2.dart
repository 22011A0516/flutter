import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widgets Demo'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Text(
            'Hello, Flutter!',
            style: TextStyle(fontSize: 24, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('Hello, Container!'),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello, '),
              Text('World!'),
            ],
          ),
          SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Hello,'),
              Text('Flutter!'),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Elevated Button Pressed')),
              );
            },
            child: Text('Elevated Button'),
          ),
          SizedBox(height: 20),
          Stack(
            children: <Widget>[
            Container(
            height:20,
            width:2000,
            color: Colors.black,
            ),
           ],
          ),
        ],
      ),
    );
  }
}
