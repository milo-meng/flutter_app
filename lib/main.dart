import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainTabs());
  }
}

class MainTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainTabsState();
}

class MainTabsState extends State<MainTabs>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFF0F0F0),//#F0F0F0
      bottomNavigationBar: new TabBar(
        controller: controller,
        labelColor: Color(0xFF3180FF),//#3180FF
        unselectedLabelColor: Color(0xFF9A9A9A),//#9A9A9A
        labelStyle: new TextStyle(
          fontSize: 10.0
        ),
        indicatorWeight: 0.1,
        tabs: <Tab>[
          new Tab(text: '首页', icon: new ImageIcon(new AssetImage("icons/tab_home.png"))),
          new Tab(text: '转账', icon: new ImageIcon(new AssetImage("icons/tab_transfer.png"))),
          new Tab(text: '收款', icon: new ImageIcon(new AssetImage("icons/tab_receive_money.png"))),
          new Tab(text: '充值', icon: new ImageIcon(new AssetImage("icons/tab_top_up.png"))),
          new Tab(text: '撮合交易', icon: new ImageIcon(new AssetImage("icons/tab_deal_making.png"))),
        ],
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Icon(Icons.directions_bus),
          new Icon(Icons.directions_car),
          new Icon(Icons.directions_subway),
          new Icon(Icons.directions_bike),
          new Icon(Icons.directions_boat),
        ],
      ),
    );
  }
}
