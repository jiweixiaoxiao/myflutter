import 'package:flutter/material.dart';

class MoreWidge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        // 固定宽高比
        AspectRatio(
          aspectRatio: 2 / 1,
          child: Container(
            color: Colors.lightBlue,
            child: Text('固定宽高'),
          ),
        ),
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.asset(
            'images/pic01.jpg',
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(
          height: 15.0,
          child: Text('SizedBox'),
        ),
        //层叠堆放
        Stack(children: <Widget>[
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200.0,
          ),
          const Positioned(
            top: 10.0,
            right: 10.0,
            child: Icon(Icons.ac_unit, color: Colors.white),
          ),
          const Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Icon(Icons.ac_unit, color: Colors.white),
          ),
          const Positioned(
            top: 10.0,
            left: 10.0,
            child: Icon(Icons.ac_unit, color: Colors.white),
          ),
          const Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Icon(Icons.ac_unit, color: Colors.white),
          ),
          const Positioned(
            bottom: 80.0,
            right: 200.0,
            child: Icon(Icons.ac_unit, color: Colors.white),
          ),
        ]),
        ListTile(
          title: Text('个人中心'),
          subtitle: Text('进入个人主页'),
          leading: Icon(Icons.supervised_user_circle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('你点击了个人中心按钮');
          },
        ),
        const Divider(
          color: Colors.red,
          height: 10.0,
        ),
        ListTile(
          title: Text('我的收藏'),
          subtitle: Text('进入个人主页'),
          leading: Icon(Icons.favorite),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('你点击了个人中心按钮');
          },
        ),
        const Divider(
          color: Colors.red,
        ),
        ListTile(
          title: Text('我的设置'),
          subtitle: Text('进入个人主页'),
          leading: Icon(Icons.settings),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            print('你点击了个人中心按钮');
          },
        ),
        const Divider(
          color: Colors.red,
        ),

        Chip(
          label: const Text('html'),
          backgroundColor: Colors.red,
          avatar: const CircleAvatar(
            backgroundColor: Colors.yellow,
            child: Text('E'),
          ),
          deleteIcon: Icon(Icons.settings),
          onDeleted: () {
            print('删除？');
          }
        ),
      ],
    );
  }
}
