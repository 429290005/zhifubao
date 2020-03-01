import 'package:flutter/material.dart';
import 'package:zhifubao/entity/IconLabel.dart';

class AppDataUtils {
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
}
