import 'package:flutter/material.dart';
import 'package:zhifubao/entity/Friend.dart';
import 'package:zhifubao/entity/IconLabel.dart';
import 'package:zhifubao/entity/Images.dart';

class AppDataUtils {
  static String choujiang = "images/choujiang.png";
  static String choujiang2 = "images/choujiang2.png";
  static String ditu = "images/ditu.png";
  static String xinwen = "images/xinwen.png";
  static String shucai = "images/shucai.png";
  static String yiyonxiang = "images/yiyonxiang.png";
  static String meinv = "images/meinv.png";

  static String huiyuan = "images/huiyuan.png";
  static String shangjia2 = "images/shangjia2.png";
  static String zhangdan = "images/zhangdan.png";
  static String zongzichan = "images/zongzichan.png";
  static String yue = "images/yue.png";
  static String yueb = "images/yueb.png";
  static String huabei2 = "images/huabei2.png";
  static String yulibao = "images/yulibao.png";
  static String yinhangka = "images/yinhangka.png";
  static String zhimaxinyon = "images/zhimaxinyon.png";
  static String baoxian = "images/baoxian.png";
  static String xhhy = "images/xhhy.png";
  static String jiebei = "images/jiebei.png";
  static String wsyh = "images/wsyh.png";
  static String gongyi = "images/gongyi.png";
  static String kefu = "images/kefu.png";

  // 首页首付款模块
  static List<IconLabel> getSfItems() {
    List<IconLabel> items = [
      new IconLabel("扫一扫", Icons.settings_overscan, Colors.white, Colors.white),
      new IconLabel("付钱", Icons.payment, Colors.white, Colors.white),
      new IconLabel(
          "收钱", Icons.collections_bookmark, Colors.white, Colors.white),
      new IconLabel("卡包", Icons.card_travel, Colors.white, Colors.white),
    ];
    return items;
  }

  // 首页功能模块
  static List<IconLabel> getItems() {
    List<IconLabel> items = [
      new IconLabel("城市服务", Icons.location_city, Colors.blue, Colors.black87),
      new IconLabel("转账", Icons.transform, Colors.blue, Colors.black87),
      new IconLabel("交通出行", Icons.traffic, Colors.blue, Colors.black87),
      new IconLabel("生活缴费", Icons.payment, Colors.blue, Colors.black87),
      new IconLabel(
          "奖励金", Icons.fast_rewind, Colors.deepOrangeAccent, Colors.black87),
      new IconLabel(
          "蚂蚁森林", Icons.format_align_center, Colors.green, Colors.black87),
      new IconLabel("蚂蚁庄园", Icons.child_care, Colors.red, Colors.black87),
      new IconLabel(
          "充值中心", Icons.recent_actors, Colors.deepOrangeAccent, Colors.black87),
      new IconLabel("余额宝", Icons.battery_alert, Colors.red, Colors.black87),
      new IconLabel(
          "哈啰出行", Icons.format_strikethrough, Colors.blue, Colors.black87),
      new IconLabel(
          "蚂蚁保险", Icons.insert_drive_file, Colors.blue, Colors.black87),
      new IconLabel("更多", Icons.view_module, Colors.black26, Colors.black87),
    ];
    return items;
  }

  // 首页轮播图
  static List<Images> getSwiper() {
    List<Images> items = [
      new Images("images/swiper1.jpg"),
      new Images("images/swiper2.jpg"),
      new Images("images/swiper3.jpg"),
    ];
    return items;
  }

  // 朋友 - 消息列表
  static List getFriend() {
    List<Friend> items = [
      new Friend("images/huabei.png", "花呗", "花呗一周消费知多少", "13:51", 0),
      new Friend("images/shangjia.png", "支付宝商家服务", "中奖公布", "12:30", 0),
      new Friend("images/tixing.png", "服务提醒", "你有45条未读消息", "10:21", 0),
      new Friend("images/wangshandai.png", "网商银行", "每天除了领收益,还能领额度", "昨天", 0),
      new Friend("images/mayi.png", "蚂蚁财富", "带你领跑收益", "2月23", 0),
      new Friend("images/xianghu.png", "相互宝", "来自ICU医生的接力请求", "2月23", 0),
      new Friend("images/daren.png", "达人信息", "ETF之间最大的不同是什么", "2月23", 0),
      new Friend("images/xingyundou.png", "天天领幸运金", "别忘了", "2月20", 0),
      new Friend("images/huabei.png", "花呗", "花呗一周消费知多少", "13:51", 0),
      new Friend("images/shangjia.png", "支付宝商家服务", "中奖公布", "12:30", 0),
      new Friend("images/tixing.png", "服务提醒", "你有45条未读消息", "10:21", 0),
      new Friend("images/wangshandai.png", "网商银行", "每天除了领收益,还能领额度", "昨天", 0),
      new Friend("images/mayi.png", "蚂蚁财富", "带你领跑收益", "2月23", 0),
      new Friend("images/xianghu.png", "相互宝", "来自ICU医生的接力请求", "2月23", 0),
      new Friend("images/daren.png", "达人信息", "ETF之间最大的不同是什么", "2月23", 0),
      new Friend("images/xingyundou.png", "天天领幸运金", "别忘了", "2月20", 0),
    ];
    return items;
  }
}
