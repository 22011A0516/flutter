import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  CustomButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        padding: MaterialStateProperty.all(EdgeInsets.all(16)),
      ),
      onPressed: onPressed,
      child: Text(label, style: TextStyle(color: Colors.white)),
    );
  }
}
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Custom Widgets Example')),
      body: Center(
        child: CustomButton(
          label: 'Click Me',
          onPressed: () {
            print('Button Pressed');
          },
        ),
      ),
    ),
  ));
}
