import 'package:flutter/material.dart';

void main() {
  runApp(
      App()
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          centerTitle: true,
          elevation: 0.0,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.search),
          ],
        ),
        body: Hello()
    );
  }

}

class Hello extends StatelessWidget {
  build(BuildContext context) {
    return const Center(
      child: Text(
        '你好，season',
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