import 'package:flutter/material.dart';
import 'package:myflutter/hello.dart';
import 'package:myflutter/tab.dart';
import 'package:myflutter/widge_text.dart';
import 'drawer_list.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: true,
          elevation: 0.0,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.search),
          ],
        ),
        // body: Hello(),
      // body: WidgeDemo(),
      // body:WidgeDemoRichText(),
      // body: WidgetDemoContainer2(),
      body: Hello(),
        drawer: DrawerList(),
    );
  }

}