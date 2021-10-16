import 'package:flutter/material.dart';

///StatefulWidget与基础组件
class StatefulGroup extends StatefulWidget {
  @override
  _StatefulGroupState createState() => _StatefulGroupState();
}

class _StatefulGroupState extends State<StatefulGroup> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: 'StatefulWidget与基础组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('1StatefulWidget与基础组件'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                print('index: ' + index.toString());
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
                label: '首页1',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  color: Colors.grey,
                ),
                activeIcon: Icon(
                  Icons.list,
                  color: Colors.blue,
                ),
                label: '列表2',
              )
            ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(this.context);
          },
          child: const Icon(
            Icons.thumb_up,
            color: Colors.white,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
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
                          Image.network(
                            'http://www.devio.org/img/avatar.png',
                            width: 100,
                            height: 100,
                          ),
                          const TextField(
                            //输入文本的样式
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                hintText: '请输入',
                                hintStyle: TextStyle(fontSize: 15)),
                          ),
                          Container(
                            height: 100,
                            margin: EdgeInsets.only(top: 10),
                            decoration:
                                BoxDecoration(color: Colors.lightBlueAccent),
                            child: PageView(
                              children: <Widget>[
                                _item('Page1', Colors.deepPurple),
                                _item('Page2', Colors.green),
                                _item('Page3', Colors.red)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(color: Colors.red),
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Image.network(
                                    'http://www.devio.org/img/avatar.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Image.network(
                                    'http://www.devio.org/img/avatar.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Image.network(
                                    'http://www.devio.org/img/avatar.png',
                                    width: 100,
                                    height: 100,
                                  ),
                                  Text('sdasdadas'),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                onRefresh: _handleRefresh)
            : Text('列表'),
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
}
