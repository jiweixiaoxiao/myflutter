import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<FutureDemo> {
  String showResult = '';
  // 发送请求的方法
  Future<CommonModel> fetchPost() async {
    var url =
    Uri.http('www.devio.org', '/io/flutter_app/json/test_common_model.json', {'q': '{http}'});
    final response = await http
        .get(url);
    Utf8Decoder utf8decoder = Utf8Decoder(); //fix 中文乱码
    var result = json.decode(utf8decoder.convert(response.bodyBytes));
    // 把返回的结果封装成对象
    return CommonModel.fromJson(result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Future与FutureBuilder实用技巧'),
        ),
        body: FutureBuilder<CommonModel>(
            future: fetchPost(),
            builder:
                (BuildContext context, AsyncSnapshot<CommonModel> snapshot) {
              switch (snapshot.connectionState) {
                // 根据不同的的状态放置不同的组件
                case ConnectionState.none: //网络请求还未开始的状态
                  return new Text('Input a URL to start');
                case ConnectionState.waiting:// 网络请求正在进行的状态，现实一个加载框
                  return new Center(child: new CircularProgressIndicator());
                case ConnectionState.active:
                  return new Text('');
                case ConnectionState.done: // 网络请求结束的状态
                  if (snapshot.hasError) { // 如果网络请求失败了
                    return Text(
                      '${snapshot.error}',
                      style: TextStyle(color: Colors.red),
                    );
                  } else { // 网络请求成功了
                    return Column(children: <Widget>[
                      Text('icon:${snapshot.data!.icon}'),
                      Text('statusBarColor:${snapshot.data!.statusBarColor}'),
                      Text('title:${snapshot.data!.title}'),
                      Text('url:${snapshot.data!.url}')
                    ]);
                  }
              }
            }),
      ),
    );
  }
}

class CommonModel {
  final String? icon;
  final String? title;
  final String? statusBarColor;
  final String? url;
  final bool? hideAppBar;

  CommonModel(
  {this.icon, this.title, this.statusBarColor, this.url, this.hideAppBar}
);
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json["icon"],
      title: json["title"],
      url: json["url"],
      statusBarColor: json["statusBarColor"],
      hideAppBar: json["hideAppBar"],
    );
  }
}
