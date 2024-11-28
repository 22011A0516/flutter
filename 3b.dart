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
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    if (screenWidth < 600) {
      // Layout for small screens
      return _buildMobileLayout();
    } else {
      // Layout for large screens
      return _buildTabletLayout();
    }
  }

  // Layout for smaller screens (e.g., mobile)
  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI - Mobile'),
      ),
      body: Column(
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
      ),
    );
  }

  // Layout for larger screens (e.g., tablets)
  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive UI - Tablet'),
      ),
      body: Row(
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
      ),
    );
  }
}
