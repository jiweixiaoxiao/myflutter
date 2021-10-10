import 'package:flutter/material.dart';
import 'package:myflutter/home.dart';
import 'package:myflutter/tab.dart';
void main() {
  runApp(
      App()
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: HelloTab(),
      debugShowCheckedModeBanner: false,
    );
  }
}

