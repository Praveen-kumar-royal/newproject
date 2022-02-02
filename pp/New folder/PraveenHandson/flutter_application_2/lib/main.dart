import './home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator App'),
        ),
        backgroundColor: Colors.white38,
        body: HomePage(),
      ),
    );
  }
}
