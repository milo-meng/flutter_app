import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final navigationBar = new BottomNavigationBar(
    items: [
      new BottomNavigationBarItem(
          title: new Text('Bus'), icon: new Icon(Icons.directions_bus)),
      new BottomNavigationBarItem(
          title: new Text('Car'), icon: new Icon(Icons.directions_car)),
      new BottomNavigationBarItem(
          title: new Text('Subway'), icon: new Icon(Icons.directions_subway)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          bottomNavigationBar: navigationBar,
          body: new TabBarView(
            children: <Widget>[
              new Icon(Icons.directions_bus),
              new Icon(Icons.directions_bike),
              new Icon(Icons.directions_car),
            ],
          ),
        ),
      ),
    );
  }
}
