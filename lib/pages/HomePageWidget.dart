import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}

class NewsTab{
  String text;
  NewsList newsList;
  NewsTab(this.text,this.newsList);
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  final List<NewsTab> myTabs = <NewsTab> [
    new NewsTab('关注', new NewsList(newsType: 'guanzhu')),
    new NewsTab('头条', new NewsList(newsType: 'toutiao')),
    new NewsTab('上海', new NewsList(newsType: 'shanghai')),
    new NewsTab('国内', new NewsList(newsType: 'guonei')),
    new NewsTab('国际', new NewsList(newsType: 'guoji')),
    new NewsTab('科技', new NewsList(newsType: 'keji')),
    new NewsTab('段子', new NewsList(newsType: 'duanzi')),
    new NewsTab('美女', new NewsList(newsType: 'meinv')),
    new NewsTab('影视', new NewsList(newsType: 'movie')),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        title: new TabBar(
          controller: _tabController,
          tabs: myTabs.map((NewsTab item){
            return new Tab(text:item.text??'错误');
          }).toList(),
          indicatorColor: Colors.white,
          isScrollable: true,
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: myTabs.map((item){
          return item.newsList;
        }).toList(),
      ),
    );
  }
}

//新闻列表
class NewsList extends StatefulWidget{
  final String newsType;    //新闻类型
  @override
  NewsList({Key key, this.newsType} ):super(key:key);

  @override
  State<StatefulWidget> createState() {
    return new _NewsListState();
  }
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Text('新闻'),
          ],
        ),
      ),
    );
  }
}