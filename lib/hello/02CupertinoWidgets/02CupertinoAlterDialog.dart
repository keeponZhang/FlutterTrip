import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CupertinoAlterDialog组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CupertinoAlterDialog组件示例"),
        ),
        body: Center(
          child: CupertinoAlertDialog(
            title: Text("提示"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("是否要删除?"),
                  Text("一旦数据删除不可恢复"),
                ],
              ),
            ),
            actions: [
              CupertinoDialogAction(
                child: Text("确定"),
                onPressed: () {},
              ),
              CupertinoDialogAction(
                child: Text("取消"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
