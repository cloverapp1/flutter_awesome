import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Data Detail')
          ],
        ),
      ),
    );
  }

//
//  final List<Tab> dataTabs = <Tab>[
//    new Tab(text: 'left'),
//    new Tab(text: 'right'),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return new DefaultTabController(
//      length: dataTabs.length,
//      child: new Scaffold(
//        appBar: new AppBar(
//          backgroundColor: Colors.lightBlue,
//          title: new TabBar(
//            tabs: dataTabs,
//            indicatorColor: Colors.white,
//            isScrollable: true,
//          ),
//        ),
//        body: new TabBarView(
//          children: dataTabs.map((Tab tab) {
//            return new Center(child: new Text(tab.text));
//          }).toList(),
//        ),
//      ),
//    );
//  }
}