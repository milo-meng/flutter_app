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
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new Material(
        color: Colors.deepOrange,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(text: 'Bus', icon: new Icon(Icons.directions_bus)),
            new Tab(text: 'Car', icon: new Icon(Icons.directions_car)),
            new Tab(text: 'Subway', icon: new Icon(Icons.directions_subway)),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Icon(Icons.directions_bus),
          new Icon(Icons.directions_car),
          new Icon(Icons.directions_subway),
        ],
      ),
    );
  }
}
