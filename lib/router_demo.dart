import 'package:flutter/material.dart';

import 'button_demo.dart';
import 'input_field.dart';

class RouteDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('路由'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*Navigator.push(context, MaterialPageRoute(
              builder: (context) => ButtonDemo()
          ));*/
          Navigator.pushNamed(context, '/button');
        },
      ),
    );
  }

}