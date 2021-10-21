import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late AnimationStatus animationState;
  late double animationValue;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // #docregion addListener
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        // #enddocregion addListener
        setState(() {
          animationValue = animation.value;
        });
        // #docregion addListener
      })
      ..addStatusListener((AnimationStatus state) {
        setState(() {
          print(state);
          animationState = state;
        });
      });
    // #enddocregion addListener
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              controller.reset();
              controller.forward();
            },
            child: Text('Start', textDirection: TextDirection.ltr),
          ),
          const Text('State:123',
              textDirection: TextDirection.ltr),
          const Text('Value:456',
              textDirection: TextDirection.ltr),
          Container(
            height: animation.value,
            width: animation.value,
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}