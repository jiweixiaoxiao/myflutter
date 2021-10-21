
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HttpDemoApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HttpDemoApp();
}

class _HttpDemoApp  extends State<HttpDemoApp>{
  String showResult = '';
  Future<CommonModel> fetchPost() async {
    var url =
    Uri.http('www.devio.org', '/io/flutter_app/json/test_common_model.json', {'q': '{http}'});
    final response = await http.get(url);
    final result = json.decode(response.body);
    return CommonModel.fromJson(result);
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('基于Http实现网络操作'),
          backgroundColor:  Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            InkWell(
              onTap: (){
                fetchPost().then((CommonModel value) {
                  setState(() {
                    showResult = '请求结果：hideAppBar：${value.hideAppBar}icon：${value.icon}title: ${value.title}statusBarColor: ${value.statusBarColor}';
                  });
                });
              },
              child: const Text(
                  '点我',
                  style: TextStyle(fontSize: 26),
              ),
            ),
            Text(showResult)
          ],
        ),
      ),
    );
  }
}



class CommonModel {
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  CommonModel({required this.icon, required this.title, required this.url, required this.statusBarColor, required this.hideAppBar});

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}

