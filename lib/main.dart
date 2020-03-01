import 'package:flutter/material.dart';
import 'package:zhifubao/MainFood.dart';
import 'package:zhifubao/MainFriend.dart';
import 'package:zhifubao/MainHome.dart';
import 'package:zhifubao/MainMy.dart';
import 'package:zhifubao/MainWealth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget> _page = [
    new MainHome(),
    new MainWealth(),
    new MainFood(),
    new MainFriend(),
    new MainMy(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), title: Text("财富")),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("口碑")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("朋友")),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), title: Text("我的")),
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        onTap: _onCurrentIndexTap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onCurrentIndexTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
