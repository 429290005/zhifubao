// 我的

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zhifubao/utils/AppDataUtils.dart';

class MainMy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainMyState();
}

class MainMyState extends State<MainMy> {
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
                  child: Text("我的",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
              Text("设置", style: TextStyle(fontSize: 20, color: Colors.white))
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.blue,
                  child: getUserInfo(),
                ),
                getFunctionRowNoLabel2("支付宝会员", AppDataUtils.svg_huiyuan,
                    getMs("4个积分待领取", Colors.black38)),
                getFunctionRowNoLabel2("商家服务", AppDataUtils.svg_shangjia,
                    getMs("商家服务", Colors.teal)),
                getCx(),
                getFunctionRowNoLabel2(
                    "账单", AppDataUtils.svg_zhangdan, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2(
                    "总资产", AppDataUtils.svg_zzc, getMs("账户安全保障中", Colors.teal)),
                getXx(),
                getFunctionRowNoLabel2(
                    "余额", AppDataUtils.svg_yue, getMs("0.0元", Colors.black38)),
                getXx(),
                getFunctionRowNoLabel2(
                    "余额宝", AppDataUtils.svg_yuebao, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2(
                    "花呗", AppDataUtils.svg_huabei, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2(
                    "余利宝", AppDataUtils.svg_yulibao, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2(
                    "银行卡", AppDataUtils.svg_yinhangka, getMs("", Colors.black)),
                getCx(),
                getFunctionRowNoLabel2(
                    "芝麻信用", AppDataUtils.svg_zhima, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2(
                    "蚂蚁保险", AppDataUtils.svg_baoxian, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2("相互宝", AppDataUtils.svg_xianghu,
                    getMs("你有一个接力邀请", Colors.black38)),
                getXx(),
                getFunctionRowNoLabel2(
                    "借呗", AppDataUtils.svg_jiebei, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2("网商银行", AppDataUtils.svg_wangshang,
                    getMs("", Colors.black)),
                getCx(),
                getFunctionRowNoLabel2(
                    "支付宝公益", AppDataUtils.svg_gongyi, getMs("", Colors.black)),
                getXx(),
                getFunctionRowNoLabel2(
                    "我的客服", AppDataUtils.svg_kfu, getMs("", Colors.black)),
              ],
            ),
          ),
        ),
      ],
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

  Container getFunctionRowNoLabel2(String title, String svg, Text text) {
    return new Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(svg, height: 28),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              child: Text(title, style: TextStyle(fontSize: 16)),
            ),
          ),
          text,
          Icon(Icons.navigate_next, color: Colors.black38),
        ],
      ),
    );
  }

  Text getMs(String txt, Color txtColor) {
    return new Text(txt, style: TextStyle(fontSize: 12, color: txtColor));
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
