import 'package:flutter/material.dart';
 class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Drawer(
     child: ListView(
         padding: const EdgeInsets.all(0.0),
         children: const [
          DrawerHeader(decoration: BoxDecoration(color: Colors.blue),child: Center(child: Text('配置中心', style: TextStyle(fontSize: 24.0, color: Colors.white)),)),
           ListTile(
             title: Text('我的'),
             leading: Icon(Icons.supervised_user_circle),
             trailing: Icon(Icons.arrow_forward_ios),
           ),
           ListTile(
             title: Text('小组'),
             leading: Icon(Icons.group),
             trailing: Icon(Icons.arrow_forward_ios),
           ),
           ListTile(
             title: Text('设置'),
             leading: Icon(Icons.settings),
             trailing: Icon(Icons.arrow_forward_ios),
           ),
         ],
     ),
    );
  }

 }