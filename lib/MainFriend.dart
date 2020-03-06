// 朋友

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zhifubao/FriendInfo.dart';
import 'package:zhifubao/entity/Friend.dart';
import 'package:zhifubao/utils/AppDataUtils.dart';

class MainFriend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainFriendState();
}

class MainFriendState extends State<MainFriend> {
  var friend = AppDataUtils.getFriend();

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          padding: EdgeInsets.only(left: 8, top: 38, right: 8, bottom: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text("朋友",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
              Icon(Icons.people, color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
                  margin: EdgeInsets.only(bottom: 20),
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "芝麻信用",
                      prefixIcon: Icon(Icons.search, color: Colors.black38),
                      fillColor: Color.fromARGB(255, 228, 228, 228),
                      enabledBorder: InputBorder.none,
                      filled: true,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    getButIconColr("生活号", "你有新通知", Icons.notifications_active,
                        Colors.teal),
                    getButIconColr("小程序", "天天领福利", Icons.apps, Colors.blue),
                    getButIconColr("生活圈", "你有动态更新",
                        Icons.supervised_user_circle, Colors.amber),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 18),
                  color: Color.fromARGB(255, 228, 228, 228),
                  padding: EdgeInsets.all(4),
                ),
                ListView.separated(
                  physics: new NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  itemCount: friend.length,
                  itemBuilder: (BuildContext context, int index) {
                    return getItem(friend[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(color: Color.fromARGB(255, 228, 228, 228));
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // -------------------- 上面Icon下面文字组合 --------------------
  Column getButIconColr(
      String label, String label2, IconData icon, Color iconColor) {
    return new Column(
      children: <Widget>[
        new Icon(icon, color: iconColor),
        new Container(
          margin: const EdgeInsets.only(top: 8),
          child: new Text(label,
              style: new TextStyle(fontSize: 14, color: Colors.black87)),
        ),
        new Container(
          margin: const EdgeInsets.only(top: 8),
          child: new Text(label2,
              style: new TextStyle(fontSize: 14, color: Colors.black45)),
        ),
      ],
    );
  }

  // -------------------- ListView的Item --------------------
  GestureDetector getItem(Friend friend) {
    print(friend.assets);
    return new GestureDetector(
      child: Row(
        children: <Widget>[
          Expanded(
            child: SvgPicture.asset(friend.assets, height: 40),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(friend.title, style: TextStyle(fontSize: 16)),
                  Text(friend.info, style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ),
          Expanded(child: Text(friend.time)),
        ],
      ),
      onTap: () => tap(friend),
    );
  }

  void tap(Friend friend) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return FriendInfo(text: friend.title);
    }));
  }
}
