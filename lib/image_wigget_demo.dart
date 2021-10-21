import 'package:flutter/material.dart';

class ImageWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData.fallback(),
      home: Column(
        children: <Widget>[
          Image.network(
            'http://www.devio.org/img/avatar.png',
          ),
          const Image(
            height: 166,
            width: 166,
            image: AssetImage('images/pic02.jpg'),
          ),
        ],
      ),
    );
  }
}
