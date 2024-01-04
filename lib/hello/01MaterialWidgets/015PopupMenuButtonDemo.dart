import 'package:flutter/material.dart';

enum ConferenceItem {
  AddMembter,
  LockConference,
  ModifyLayout,
  TurnOfAll,
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "PopupMenuButton示例",
      home: Scaffold(
        appBar: AppBar(title: Text("PopupMenuButton示例")),
        body: Center(
          child: PopupMenuButton(
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<ConferenceItem>>[
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.AddMembter,
                child: Text("添加成员"),
              ),
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.LockConference,
                child: Text("锁定会议"),
              ),
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.ModifyLayout,
                child: Text("修改布局"),
              ),
              const PopupMenuItem<ConferenceItem>(
                value: ConferenceItem.TurnOfAll,
                child: Text("关闭所有"),
              ),
            ],
            onSelected: (ConferenceItem result) {},
          ),
        ),
      ),
    );
  }
}
