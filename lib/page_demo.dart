import 'package:flutter/material.dart';

class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 图片
        Image.asset('images/pic01.jpg'),
        // 标题 - 水平布局 - Row
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'flutter引用图片后，在',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Expected a key while parsing a block mapping',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.star, color: Colors.red),
              const Text('31')
            ],
          ),
        ),
        // 按钮
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              PubIcon('PHONE', Icons.phone),
              PubIcon('ROUTER', Icons.router),
              PubIcon('SHARE', Icons.share),
            ]),
        // 长文字
        const SizedBox(
          height: 20.0,
        ),
        const Padding(
            padding: EdgeInsets.all(20.0),
            child:
            Text(
                '会谈中，中方从维护中印两国两军关系大局出发，为推动边境局势缓和降温做出了巨大努力、充分体现了诚意，但印方仍坚持不合理也不切实际的要求，为谈判增加了困难。中方维护国家主权的决心意志坚定不移，希望印方不要误判形势，珍惜当前中印边境地区来之不易的局面，恪守两国两军有关协议协定和共识，切实拿出诚意和行动，与中方一道共同维护边境地区和平安宁。'
            ),
        ),
      ],
    );
  }
}


class PubIcon extends StatelessWidget {
  final String text;
  final IconData icon;

  PubIcon(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Icon(icon, color: Colors.blue),
      const SizedBox(height: 7.0),
      Text(text, style: const TextStyle(color: Colors.blue))
    ]);
  }

}