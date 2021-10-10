import 'package:flutter/material.dart';
class Hello extends StatelessWidget {
  build(BuildContext context) {
    return const Center(
      child: Text(
        '你好，季炜6666',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.blue,
          fontSize:20.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}