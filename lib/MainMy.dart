// 我的

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zhifubao/utils/AppDataUtils.dart';

class MainMy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMyState();
}

class MainMyState extends State<MainMy> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            padding: EdgeInsets.only(left: 8, top: 38, right: 8, bottom: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Text("我的",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
                Text("设置", style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.blue,
            child: getUserInfo(),
          ),
          getFunctionRow(
              "支付宝会员", "4个积分待领取", AppDataUtils.huiyuan, Colors.black38),
          getFunctionRowNoLabel("商家服务", AppDataUtils.shangjia2),
          getCx(),
          getFunctionRowNoLabel("账单", AppDataUtils.zhangdan),
          getXx(),
          getFunctionRow(
              "总资产", "账户安全保障中", AppDataUtils.zongzichan, Colors.teal),
          getXx(),
          getFunctionRow("余额", "0.0元", AppDataUtils.yue, Colors.black38),
          getXx(),
          getFunctionRowNoLabel("余额宝", AppDataUtils.yueb),
          getXx(),
          getFunctionRowNoLabel("花呗", AppDataUtils.huabei2),
          getXx(),
          getFunctionRowNoLabel("余利宝", AppDataUtils.yulibao),
          getXx(),
          getFunctionRowNoLabel("银行卡", AppDataUtils.yinhangka),
          getCx(),
          getFunctionRowNoLabel("芝麻信用", AppDataUtils.zhimaxinyon),
          getXx(),
          getFunctionRowNoLabel("蚂蚁保险", AppDataUtils.baoxian),
          getXx(),
          getFunctionRow("相互宝", "你有一个接力邀请", AppDataUtils.xhhy, Colors.black38),
          getXx(),
          getFunctionRowNoLabel("借呗", AppDataUtils.jiebei),
          getXx(),
          getFunctionRowNoLabel("网商银行", AppDataUtils.wsyh),
          getCx(),
          getFunctionRowNoLabel("支付宝公益", AppDataUtils.gongyi),
          getXx(),
          getFunctionRowNoLabel("我的客服", AppDataUtils.kefu),
        ],
      ),
    );
  }

  Row getUserInfo() {
    return new Row(
      children: <Widget>[
        Expanded(child: Image.asset(AppDataUtils.meinv, fit: BoxFit.cover)),
        Expanded(
          flex: 4,
          child: Container(
            height: 55,
            margin: EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    child: Text("张三丰",
                        style: TextStyle(fontSize: 16, color: Colors.white))),
                Expanded(
                    child: Text("18668896868",
                        style: TextStyle(fontSize: 16, color: Colors.white))),
              ],
            ),
          ),
        ),
        Expanded(child: Icon(Icons.navigate_next, color: Colors.white)),
      ],
    );
  }

  Container getFunctionRow(
      String title, String label, String asset, Color labelColor) {
    return new Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Image.asset(asset),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(title, style: TextStyle(fontSize: 16)),
            ),
          ),
          Text(label, style: TextStyle(fontSize: 12, color: labelColor)),
          Icon(Icons.navigate_next, color: Colors.black38),
        ],
      ),
    );
  }

  Container getFunctionRowNoLabel(String title, String asset) {
    return new Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Image.asset(asset),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(title, style: TextStyle(fontSize: 16)),
            ),
          ),
          Icon(Icons.navigate_next, color: Colors.black38),
        ],
      ),
    );
  }

  // 细线 0.5
  Container getXx() {
    return new Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      color: Color.fromARGB(255, 228, 228, 228),
      padding: EdgeInsets.all(0.5),
    );
  }

  // 粗线 4
  Container getCx() {
    return new Container(
      margin: EdgeInsets.only(top: 8),
      color: Color.fromARGB(255, 228, 228, 228),
      padding: EdgeInsets.all(4),
    );
  }
}
