import 'package:flutter/material.dart';

class SidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.blueAccent,
          title: new TabBar(
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.directions_car)),
              new Tab(icon: new Icon(Icons.directions_bike)),
              new Tab(icon: new Icon(Icons.directions_bus)),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Icon(Icons.directions_car),
            new Icon(Icons.directions_bike),
            new Icon(Icons.directions_bus),
          ],
        ),
      ),
    );
  }
}