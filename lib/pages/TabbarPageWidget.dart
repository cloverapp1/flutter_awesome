import 'package:flutter/material.dart';
import './SidePageWidget.dart';

import './HomePageWidget.dart';
import './DataPageWidget.dart';
import './MyPageWidget.dart';
import './ConnectPageWidget.dart';

class TabbarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TabbarPageState();
  }
}

class _TabbarPageState extends State<TabbarPage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  //底部导航显示配置
  final List<Tab> _bottomTabbars = <Tab>[
    new Tab(text: '首页',icon: new Icon(Icons.home)),
    new Tab(text: '数据',icon: new Icon(Icons.cloud)),
    new Tab(text: '我的',icon: new Icon(Icons.account_circle))
  ];

  //定义底部导航
  TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(length: _bottomTabbars.length, vsync: this);
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new TabBarView(
          controller: _tabcontroller,
          children: _bottomTabbars.map((Tab tab){
            return Center(
              child: Text(tab.text),
            );
          }).toList(),
        ),
      ),
//隐藏侧栏
//      drawer: new Drawer(
//        child: new SidePage(),
//      ),
      body: new TabBarView(
        controller: _tabcontroller,
        children: <Widget>[
          new ConnectPage(),
//          new HomePage(),
          new DataPage(),
          new MyPage(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          controller: _tabcontroller,
          tabs: _bottomTabbars,
          indicatorColor: Colors.transparent,
        ),
      ),
    );
  }
}



