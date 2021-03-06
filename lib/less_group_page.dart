import 'package:flutter/material.dart';

///StatelessWidget与基础组件 - 无状态
class LessGroupPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: '1StatelessWidget与基础组件',
      // color: Colors.red,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
/*      darkTheme: ThemeData(
        primarySwatch: Colors.yellow,
      ),*/
      // darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StatelessWidget与基础组件'),
          actions: <Widget>[
            IconButton(onPressed:() {}, icon: Icon(Icons.share)),
          ],
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'I am Text',
                style: textStyle,
              ),
              const Icon(
                Icons.android,
                size: 50,
                color: Colors.red,
              ),
              const CloseButton(),
              const BackButton(),
              const Chip(
                //材料设计中一个非常有趣的小部件，什么是Chip@https://material.io/design/components/chips.html
                avatar: Icon(Icons.people),
                label: Text('StatelessWidget与基组件'),
              ),
              const Divider(
                height: 10, //容器高度，不是线的高度
                indent: 10, //左侧间距
                color: Colors.orange,
              ),
              Card(
                //带有圆角，阴影，边框等效果的卡片
                color: Colors.blue,
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'I am Card',
                    style: textStyle,
                  ),
                ),
              ),
              const AlertDialog(
                title: Text('盘他'),
                content: Text('你这个糟老头子坏得很'),
              )
            ],
          ),
        ),
        /*bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),*/
      ),
    );
  }
}
