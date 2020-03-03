// 口碑

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class MainFood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainFoodState();
}

class MainFoodState extends State<MainFood> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://hz.meituan.com/",
            ),
      },
    );
  }
}
