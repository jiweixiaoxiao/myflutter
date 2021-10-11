import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late String username;
  late String password;

  _login(){
    print(username);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  )),
              // icon: Icon(Icons.supervised_user_circle),

              // labelText: '用户名',
              hintText: '请输入手机号',
              hintStyle: TextStyle(color: Colors.black38, fontSize: 14.0),
              // filled: true,
              // fillColor: Colors.yellow,
              // border: InputBorder.none,
            ),
            onChanged: (value) {
              setState(() {
                username = value;
              });
            },
          ),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.code,
                color: Colors.grey,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black12,
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12,
                  )),
              // icon: Icon(Icons.supervised_user_circle),

              // labelText: '密码',
              hintText: '请输入密码',
              hintStyle: TextStyle(color: Colors.black38, fontSize: 14.0),
              // filled: true,
              // fillColor: Colors.yellow,
              // border: InputBorder.none,
            ),
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              onPressed: () {
                _login();
              },
              child: const Text('登陆', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  void login() {

  }
}
