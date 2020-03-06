// 首页

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zhifubao/utils/AppDataUtils.dart';

class MainHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainHomeState();
}

class MainHomeState extends State<MainHome> {
  var sfItems = AppDataUtils.getSfItems();
  var items = AppDataUtils.getItems();
  var swipers = AppDataUtils.getSwiper();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(8),
          child: Container(
            height: 40,
            margin: EdgeInsets.only(top: 24),
            child: getRowSearch(),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                color: Color.fromARGB(255, 228, 228, 228),
                padding: EdgeInsets.all(4),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: getRowMessage(),
              ),
              Container(
                color: Color.fromARGB(255, 228, 228, 228),
                padding: EdgeInsets.all(4),
              ),
              Container(
                width: size.width,
                height: 140,
                child: getSwiper(size.width, 140),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: getTextTitle("惠支付"),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: getDecoratedBox(
                            "天天抽奖", "今日限量免费抽", AppDataUtils.svg_choujiang)),
                    Expanded(
                        child: getDecoratedBox(
                            "领家庭积分", "油醋纸巾兑不停", AppDataUtils.svg_duihuan)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: getTextTitle("抗击新冠肺炎"),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: getDecoratedBox(
                            "实时数据", "疫情动态追踪", AppDataUtils.svg_ditu)),
                    Expanded(
                        child: getDecoratedBox(
                            "滚动资讯", "实时权威发布", AppDataUtils.svg_xinwen)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: getDecoratedBox(
                            "宅家也能买菜", "新鲜蔬菜送上门", AppDataUtils.svg_shucai)),
                    Expanded(
                        child: getDecoratedBox(
                            "消毒清洁用品", "除菌消毒更健康", AppDataUtils.svg_jiankang)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: size.width,
                child: Center(
                  child: Text(
                      "-------------------- 我是有底线的 --------------------",
                      style: TextStyle(fontSize: 10)),
                ),
              ),
            ],
          ),
        )),
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
      physics: new NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      // 使用item的总高度来设置 GridView 的高度
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

  // -------------------- 未读消息 --------------------
  Row getRowMessage() {
    return new Row(
      children: <Widget>[
        Icon(
          Icons.message,
          color: Colors.purpleAccent,
        ),
        Expanded(
          child: Text(" - 你有45条未读消息"),
        ),
        Text("  2小时前"),
        Icon(Icons.navigate_next)
      ],
    );
  }

  // -------------------- 轮播图 --------------------
  Swiper getSwiper(double width, double height) {
    return new Swiper(
      itemCount: swipers.length,
      itemWidth: width,
      itemHeight: height,
      autoplay: true,
      pagination: new SwiperPagination(),
      itemBuilder: (BuildContext context, int index) {
        return Image.asset(swipers[index].url, fit: BoxFit.fill);
      },
    );
  }

  // -------------------- 板块标题 --------------------
  Text getTextTitle(String label) {
    return new Text(label, style: TextStyle(fontSize: 18));
  }

  // -------------------- 板块推荐 --------------------
  DecoratedBox getDecoratedBox(String title, String info, String asset) {
    return new DecoratedBox(
      decoration: BoxDecoration(
        border:
            Border.all(color: Color.fromARGB(255, 228, 228, 228), width: 0.5),
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(title, style: TextStyle(fontSize: 15)),
                  Text(info, style: TextStyle(fontSize: 12))
                ],
              ),
            ),
//            Image.asset(asset)
            SvgPicture.asset(asset, height: 45),
          ],
        ),
      ),
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
