// 首页

import 'package:flutter/material.dart';
import 'package:zhifubao/utils/AppDataUtils.dart';

class MainHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainHomeState();
}

class MainHomeState extends State<MainHome> {
  var sfItems = AppDataUtils.getSfItems();
  var items = AppDataUtils.getItems();

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(8),
          child: getRowSearch(),
          height: 50,
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: getRowButIcon(),
        ),
        Container(
          padding: EdgeInsets.only(top: 8),
          child: getGridView(),
        ),
        Container(
          color: Colors.black12,
          padding: EdgeInsets.all(4),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: getRowMessage(),
        ),
        Container(
          color: Colors.black12,
          padding: EdgeInsets.all(4),
        ),
      ],
    );
  }

  //  -------------------- 搜索的模块 --------------------
  Row getRowSearch() {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "热搜",
              prefixIcon: Icon(Icons.search, color: Colors.blue),
              suffixIcon: Icon(Icons.keyboard_voice, color: Colors.blue),
              fillColor: Colors.white,
              filled: true,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Icon(Icons.people, color: Colors.white),
        ),
        Container(
          margin: EdgeInsets.only(left: 8),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ],
    );
  }

  // -------------------- 收付款模块 --------------------
  Row getRowButIcon() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        getButIconColr(sfItems[0].label, sfItems[0].icon, sfItems[0].iconColor,
            sfItems[0].labelColor),
        getButIconColr(sfItems[1].label, sfItems[1].icon, sfItems[1].iconColor,
            sfItems[1].labelColor),
        getButIconColr(sfItems[2].label, sfItems[2].icon, sfItems[2].iconColor,
            sfItems[2].labelColor),
        getButIconColr(sfItems[3].label, sfItems[3].icon, sfItems[3].iconColor,
            sfItems[3].labelColor),
      ],
    );
  }

  // -------------------- 小程序功能模块 --------------------
  Widget getGridView() {
    return GridView.builder(
      shrinkWrap: true, // 使用item的总高度来设置 GridView 的高度
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // 每行四列
        childAspectRatio: 1, // 显示区域宽高比相等
        crossAxisSpacing: 10.0, //水平间距
        mainAxisSpacing: 1.0, //垂直间距
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        var item = items[index];
        return getButIconColr(
            item.label, item.icon, item.iconColor, item.labelColor);
      },
    );
  }

  Row getRowMessage() {
    return new Row(
      children: <Widget>[
        Icon(Icons.message,color: Colors.purpleAccent,),
        Expanded(
          child: Text(" - 你有45条未读消息"),
        ),
        Text("  2小时前"),
        Icon(Icons.navigate_next)
      ],
    );
  }

  // -------------------- 上面Icon下面文字组合 --------------------
  Column getButIconColr(
      String label, IconData icon, Color iconColor, Color labelColor) {
    return new Column(
      children: <Widget>[
        new Icon(icon, color: iconColor),
        new Container(
          margin: const EdgeInsets.only(top: 8),
          child: new Text(label,
              style: new TextStyle(fontSize: 14, color: labelColor)),
        )
      ],
    );
  }
}
