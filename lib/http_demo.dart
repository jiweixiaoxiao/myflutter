import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpDemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('基于Http实现网络操作'),
              backgroundColor:  Colors.blue,
          ),
        body: const Center(
          child: Text('123'),
        ),
      ),
    );
  }

}