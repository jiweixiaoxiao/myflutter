import 'package:flutter/material.dart';
import 'package:myflutter/photo_app_page.dart';
import 'package:myflutter/statefull_group_page.dart';
import 'future_demo.dart';
import 'http_demo.dart';
import 'app_lifecycle.dart';
import 'flutter_layout_page.dart';
import 'flutter_widget_lifecycle.dart';
import 'gesture_page.dart';
import 'image_wigget_demo.dart';
import 'launch_page.dart';
import 'less_group_page.dart';
import 'logo_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('1如何创建和使用Flutter的路由与导航？',),
          ),
          body: RouteNavigator(),
          drawer: new Drawer(),
        ),
        routes: <String, WidgetBuilder>{
          // 'plugin': (BuildContext context) => PluginUse(),
          'less': (BuildContext context) => LessGroupPage(),
          'ful': (BuildContext context) => StatefulGroup(),
          'layout': (BuildContext context) => FlutterLayoutPage(),
          'gesture': (BuildContext context) => GesturePage(),
          // 'res': (BuildContext context) => ResPage(),
          'launch': (BuildContext context) => LaunchPage(),
          'widgetLifecycle': (BuildContext context) => WidgetLifecycle(),
          'appLifecycle': (BuildContext context) => AppLifecycle(),
          'photo': (BuildContext context) => PhotoApp(),
          'httpDemo': (BuildContext context) => HttpDemoApp(),
          'futureDemo': (BuildContext context) => FutureDemo(),
        });
  }
}

class RouteNavigator extends StatefulWidget {
  @override
  _RouteNavigatorState createState() => _RouteNavigatorState();
}

class _RouteNavigatorState extends State<RouteNavigator> {
  bool byName = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SwitchListTile(
              title: Text('${byName ? '' : '不'}通过路由名跳转'),
              value: byName,
              onChanged: (value) {
                setState(() {
                  byName = value;
                });
              }),
          // _item('如何使用Flutter包和插件？', PluginUse(), 'plugin'),
          _item('StatelessWidget与基础组件', LessGroupPage(), 'less'),
          _item('StatefulWidget与基组件', StatefulGroup(), 'ful'),
          _item('如何进行Flutter布局开发', FlutterLayoutPage(), 'layout'),
          _item('如何检测用户手势以及处理点击事件？', GesturePage(), 'gesture'),
          // _item('如何导入和使用Flutter的资源文件？', ResPage(), 'res'),
          _item('如何打开第三方应用？', LaunchPage(), 'launch'),
          _item('Flutter页面生命周期', WidgetLifecycle(), 'widgetLifecycle'),
          _item('Flutter应用生命周期', AppLifecycle(), 'appLifecycle'),
          _item('【实战尝鲜】拍照APP开发', PhotoApp(), 'photo'),
          _item('图片控件开发详解', ImageWidgetDemo(), 'ImageWidgetDemo'),
          _item('为widget添加动画1', LogoApp(), 'LogoApp'),
          _item('基于Http实现网络操作', HttpDemoApp(), 'httpDemo'),
          _item('基于future实现异步网络请求', FutureDemo(), 'futureDemo'),
        ],
      ),
    );
  }

  _item(String title, page, String routeName) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          if (byName) {
            Navigator.pushNamed(context, routeName);
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          }
        },
        child: Text(title),
      ),
    );
  }
}
