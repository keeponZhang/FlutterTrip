import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AlertDialog组件示例",
      home: Scaffold(
        appBar: AppBar(title: Text("AlertDialog组件示例")),
        body: Center(
          child: AlertDialog(
            title: const Text("提示"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("是否要删除"),
                  Text("一旦数据删除不可恢复"),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("确定"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("取消"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
