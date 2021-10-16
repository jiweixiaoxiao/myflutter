import 'package:flutter/material.dart';

///如何进行Flutter布局开发？
class FlutterLayoutPage extends StatefulWidget {

  @override
  _FlutterLayoutPageState createState() => _FlutterLayoutPageState();
}
class _FlutterLayoutPageState extends State<FlutterLayoutPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: '如何进行Flutter布局开发？',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('如何进行Flutter布局开发？'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  title: Text('首页')),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.list,
                    color: Colors.blue,
                  ),
                  title: Text('列表'))
            ]),
        floatingActionButton:  FloatingActionButton(
          onPressed: (){
            print("press onPressed");
          },
          child: Text('点我'),
        ),
        body: _currentIndex == 0
            ? RefreshIndicator(
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipOval(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                  'http://www.devio.org/img/avatar.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: ClipRRect(
                              //圆角
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                              child: Opacity(
                                opacity: 0.6, //60%透明度
                                child: Image.network(
                                  'http://www.devio.org/img/avatar.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const TextField(
                        //输入文本的样式
                        maxLength : 3,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            hintText: '请输入',
                            hintStyle: TextStyle(fontSize: 15)),
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.all(10),
                        //PhysicalModel ，主要的功能就是设置widget四边圆角，可以设置阴影颜色，和z轴高度
                        child: PhysicalModel(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(6),
                          clipBehavior: Clip.antiAlias, //抗锯齿
                          child: PageView(
                            children: <Widget>[
                              _item('Page1', Colors.deepPurple),
                              _item('Page2', Colors.green),
                              _item('Page3', Colors.red)
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          /**
                           * Sizes its child to a fraction of the total available space.

                              For both its width and height,
                              this render object imposes a tight constraint on its child that is a multiple (typically less than 1.0) of the maximum constraint it received
                              from its parent on that axis.
                              If the factor for a given axis is null,
                              then the constraints from the parent are just passed through instead.
                           */
                          FractionallySizedBox(
                            widthFactor: 1,
                            child: Container(
                              decoration:
                              BoxDecoration(color: Colors.greenAccent),
                              child: Text('宽度撑满'),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Image.network(
                      'http://www.devio.org/img/avatar.png',
                      width: 100,
                      height: 100,
                    ),
                    Positioned(
                        left: 25,
                        bottom: 25,
                        child: Image.network(
                          'http://www.devio.org/img/avatar.png',
                          width: 36,
                          height: 36,
                        ))
                  ],
                ),
                Wrap(
                  //创建一个wrap布局，从左向右进行排列，会自动换行
                  spacing: 20, //水平间距
                  runSpacing: 20, //垂直间距
                  children: <Widget>[
                    _chip('Flutter'),
                    _chip('进阶'),
                    _chip('实战'),
                    _chip('携程'),
                    _chip('App'),
                  ],
                )
              ],
            ),
            onRefresh: _handleRefresh)
            : Column(
          children: <Widget>[
            Text('列表'),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Text('拉伸填满高度'),
                ))
          ],
        ),
      ),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }

  _item(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(
        title,
        style: TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }

  _chip(String label) {
    return Chip(
      label: Text(label),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade900,
        child: Text(
          label.substring(0, 1),
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
