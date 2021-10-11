import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                print('点击了文字按钮');
              },
              child: Text('文字按钮'),
              textColor: Colors.red,
            ),
            FlatButton.icon(
                icon: Icon(Icons.arrow_back),
                label: Text('图标文字'),
                textColor: Colors.blue,
                onPressed: () {
                  print('带图标的文字按钮');
                }),
            RaisedButton(
              onPressed: () {},
              elevation: 0.0,
              child: Text('带效果的按钮', style: TextStyle(color: Colors.white)),
              color: Colors.blue,
              splashColor: Colors.red,
            ),
            RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_downward),
              label: Text('带小图标的效果按钮'),
              splashColor: Colors.blue,
              elevation: 0.0,
            ),
            OutlineButton(
              onPressed: () {
                print('带边框按钮');
              },
              splashColor: Colors.red,
              child: Text('边框按钮'),
              textColor: Colors.blue,
              borderSide: const BorderSide(
                color: Colors.black,
                width: 3.0,
              ),
            ),
            OutlineButton.icon(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_up),
              label: Text('带小图标的边框按钮'),
              splashColor: Colors.black,
              borderSide: BorderSide(color: Colors.blue),
            ),
          ],
        ),
      ),
      // 浮动按钮 floatingActionButton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        elevation: 0.0,
        backgroundColor: Colors.red,
        onPressed: () {
          print('按下了浮动按钮');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
