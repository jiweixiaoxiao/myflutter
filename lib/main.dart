import 'package:flutter/material.dart';
import 'package:myflutter/home.dart';
import 'package:myflutter/tab.dart';

import 'button_demo.dart';
import 'data_type.dart';
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
      // home: HelloTab(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const DataType(),
        '/hello': (context) => HelloTab(),
        '/home': (context)=> Home(),
        '/button': (context) => ButtonDemo(),
      },
    );
  }
}

