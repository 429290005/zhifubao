// 财富

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zhifubao/utils/AppDataUtils.dart';

class MainWealth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainWealthState();
}

class MainWealthState extends State<MainWealth> {
  var swipers = AppDataUtils.getSwiper2();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return new Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          padding: EdgeInsets.only(left: 8, top: 38, right: 8, bottom: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text("财富",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
              Icon(Icons.face, color: Colors.white),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(Icons.monetization_on, color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(Icons.search, color: Colors.white),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                children: <Widget>[
                  getTotalAssets(),
                  Container(
                    width: size.width,
                    color: Colors.blue,
                    child: Icon(Icons.keyboard_arrow_down,
                        color: Colors.white, size: 14),
                  ),
                  getRowModular(),
                  getGp(),
                  getZx(),
                  getRowGengDuo("财富直通车", "更多"),
                  Container(
                    width: size.width,
                    height: 140,
                    child: getSwiper(size.width, 140),
                  ),
                  getRowGengDuo("稳健理财", "更多"),
                  getWjlc(),
                  getRowGengDuo("投资精选", "更多"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // -------------------- 总资产 --------------------
  Container getTotalAssets() {
    return new Container(
      color: Colors.blue,
      padding: EdgeInsets.only(top: 8, left: 8, right: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("总资产(元)",
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Icon(Icons.remove_red_eye,
                          size: 12, color: Colors.white),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Icon(Icons.security,
                            size: 10, color: Colors.white)),
                    Text("保障中",
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(top: 8),
                    child:
                        Text("1000个亿", style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("昨日收益",
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                Padding(
                    padding: EdgeInsets.only(top: 8),
                    child:
                        Text("1008611", style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // -------------------- 理财板块 --------------------
  Container getRowModular() {
    return new Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          getButIconColr("余额宝", Icons.monetization_on),
          getButIconColr("理财", Icons.lock),
          getButIconColr("基金", Icons.file_upload),
          getButIconColr("黄金", Icons.category),
          getButIconColr("股票", Icons.screen_share),
          getButIconColr("尊享", Icons.memory),
        ],
      ),
    );
  }

  // -------------------- 最新股票信息 --------------------
  Widget getGp() {
    return new Padding(
      padding: EdgeInsets.only(left: 20, top: 8, right: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 254, 254, 254),
          Color.fromARGB(255, 255, 229, 230)
        ])),
        child: Padding(
          padding: EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("A股 | 深证成指", style: TextStyle(fontSize: 12)),
              Text("  11666.64  +284.88  +2.50%",
                  style: TextStyle(color: Colors.redAccent, fontSize: 12)),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("交易中", style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // -------------------- 自选，热门，排行 --------------------
  Widget getZx() {
    return new Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 228, 228, 228))),
        child: Padding(
          padding: EdgeInsets.only(top: 8, right: 8, bottom: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.add_box,
                      size: 14,
                      color: Colors.blue,
                    ),
                    Text("自选", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.collections_bookmark,
                      size: 14,
                      color: Colors.blue,
                    ),
                    Text("热门板块", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.view_column,
                      size: 14,
                      color: Colors.blue,
                    ),
                    Text("基金排行", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container getRowGengDuo(String title, String label) {
    return new Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(title,
                style: TextStyle(color: Colors.black, fontSize: 17)),
          ),
          Text(label, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  // -------------------- 轮播图 --------------------
  Swiper getSwiper(double width, double height) {
    return new Swiper(
      itemCount: swipers.length,
      itemWidth: width,
      itemHeight: height,
      autoplay: true,
      layout: SwiperLayout.TINDER,
      pagination: new SwiperPagination(),
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(swipers[index].url, fit: BoxFit.fill);
      },
    );
  }

  // -------------------- 稳健理财推荐 --------------------
  Column getColumn(String str1, String str2, String str3, String str4) {
    return new Column(
      children: <Widget>[
        Text(str1, style: TextStyle(fontSize: 16)),
        Text(str2, style: TextStyle(fontSize: 16, color: Colors.red)),
        Text(str3, style: TextStyle(fontSize: 10, color: Colors.black54)),
        Text(str4, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget getWjlc() {
    return new Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromARGB(255, 228, 228, 228))),
        child: Padding(
          padding: EdgeInsets.only(top: 8, right: 8, bottom: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: getColumn("季度理财", "4.00%", "业绩基准(年化)", "财通财慧2号"),
              ),
              Container(color: Colors.black12, width: 1, height: 50),
              Expanded(
                flex: 1,
                child: getColumn("半年理财", "3.30%", "业绩基准(年化)", "广发多添利"),
              ),
              Container(color: Colors.black12, width: 1, height: 50),
              Expanded(
                flex: 1,
                child: getColumn("年度理财", "4.1060%", "业绩基准(年化)", "国寿安鑫盈"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // -------------------- 上面Icon下面文字组合 --------------------
  Column getButIconColr(String label, IconData icon) {
    return new Column(
      children: <Widget>[
        new Icon(icon, color: Colors.blue),
        new Container(
          margin: const EdgeInsets.only(top: 4),
          child: new Text(label,
              style: new TextStyle(fontSize: 14, color: Colors.black54)),
        )
      ],
    );
  }
}
