import 'package:flutter/material.dart';

/// Text组件的demo
class WidgeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      '10月2日至7日，山西省出现大范围强降水，全省过程降水量在15.4毫米至285.2毫米之间。其中最大降水出现在临汾市大宁县，全省117个县（市、区）中有18个县（市、区）降水超过200毫米。其中，太原、阳泉、临汾、长治、吕梁、晋中大部分地区都创下了10月上旬累计降雨量纪录。',
      style: TextStyle(
          color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.w600),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/// RichText组件的demo
class WidgeDemoRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: 'java',
            style: TextStyle(color: Colors.blue, fontSize: 24.0),
            children: [
          TextSpan(
              text: 'App',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic)),
          TextSpan(text: 'python', style: TextStyle(color: Colors.red)),
        ]));
  }
}

class WidgetDemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        /// 控制元素的X轴的位置
        crossAxisAlignment: CrossAxisAlignment.center,

        /// 控制元素在Y轴上的位置
        /// spaceBetween和spaceEvenly的区别
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          Icon(
            Icons.settings,
            size: 40.0,
          ),
          Icon(
            Icons.cloud,
            size: 40.0,
          ),
          Icon(
            Icons.vibration,
            size: 40.0,
          ),
          Icon(
            Icons.archive,
            size: 40.0,
          ),
          Icon(
            Icons.group,
            size: 40.0,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        border: Border.all(
          color: Colors.red,
          width: 2.0,
        ),
      ),
    );
  }
}

class WidgetDemoContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 300.0,
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: Column(
              /// 控制元素的X轴的位置
              crossAxisAlignment: CrossAxisAlignment.center,

              /// 控制元素在Y轴上的位置
              /// spaceBetween和spaceEvenly的区别
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.settings,
                  size: 40.0,
                ),
                Icon(
                  Icons.cloud,
                  size: 40.0,
                ),
                Icon(
                  Icons.vibration,
                  size: 40.0,
                ),
                Icon(
                  Icons.archive,
                  size: 40.0,
                ),
                Icon(
                  Icons.group,
                  size: 40.0,
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              height: 300.0,
              margin: const EdgeInsets.only(top: 10.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            child: Row(
              /// 控制元素的X轴的位置
              crossAxisAlignment: CrossAxisAlignment.center,

              /// 控制元素在Y轴上的位置
              /// spaceBetween和spaceEvenly的区别
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Icon(
                  Icons.settings,
                  size: 40.0,
                ),
                Icon(
                  Icons.cloud,
                  size: 40.0,
                ),
                Icon(
                  Icons.vibration,
                  size: 40.0,
                ),
                Icon(
                  Icons.archive,
                  size: 40.0,
                ),
                Icon(
                  Icons.group,
                  size: 40.0,
                ),
              ],
            ),
          ),

        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        border: Border.all(
          color: Colors.red,
          width: 2.0,
        ),
      ),
    );
  }
}
