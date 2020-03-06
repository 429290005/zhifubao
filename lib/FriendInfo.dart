import 'package:flutter/material.dart';

class FriendInfo extends StatefulWidget {
  FriendInfo({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<StatefulWidget> createState() => FriendInfoState();
}

class FriendInfoState extends State<FriendInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}
