import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return _buildVerticalLayout();
          } else {
            return _buildHorizontalLayout();
          }
        },
      ),
    );
  }

  // Layout for smaller screens (e.g., mobile)
  Widget _buildVerticalLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.amber,
          height: 100,
          width: double.infinity,
          child: Center(child: Text('Header', style: TextStyle(fontSize: 24))),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('Content', style: TextStyle(fontSize: 24))),
          ),
        ),
        Container(
          color: Colors.green,
          height: 100,
          width: double.infinity,
          child: Center(child: Text('Footer', style: TextStyle(fontSize: 24))),
        ),
      ],
    );
  }

  // Layout for larger screens (e.g., tablets)
  Widget _buildHorizontalLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          color: Colors.amber,
          width: 200,
          height: double.infinity,
          child: Center(child: Text('Sidebar', style: TextStyle(fontSize: 24))),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Center(child: Text('Content', style: TextStyle(fontSize: 24))),
          ),
        ),
        Container(
          color: Colors.green,
          width: 200,
          height: double.infinity,
          child: Center(child: Text('Additional Sidebar', style: TextStyle(fontSize: 24))),
        ),
      ],
    );
  }
}
