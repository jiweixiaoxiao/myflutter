import 'package:flutter/material.dart';
import 'package:myflutter/page_demo.dart';
import 'package:myflutter/input_field.dart';
import 'package:myflutter/router_demo.dart';
import 'button_demo.dart';
import 'drawer_list.dart';
import 'more_widge.dart';

class HelloTab extends StatelessWidget {
  build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab标签栏切换'),
          centerTitle: true,
          elevation: 0.0,
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.search),
          ],
          bottom: const TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(
              fontSize: 16.0,
            ),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(
              fontSize: 14.0,
            ),
            indicatorColor: Colors.red,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(text: 'HTML'),
              Tab(text: 'Java'),
              Tab(text: 'Go'),
              Tab(text: 'Button'),
              Tab(text: 'Router'),
            ],
          ),
        ),
        // body: Hello(),
        // body: WidgeDemo(),
        // body:WidgeDemoRichText(),
        // body: WidgetDemoContainer2(),
        body: TabBarView(
          children: [
            PageDemo(),
            MoreWidge(),
            InputWidget(),
            ButtonDemo(),
            RouteDemo(),
          ],
        ),
        drawer: DrawerList(),
      ),
    );
  }
}
