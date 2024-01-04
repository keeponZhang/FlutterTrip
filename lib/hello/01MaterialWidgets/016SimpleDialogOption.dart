import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SimpleDialogOption组件示例",
      home: Scaffold(
        appBar: AppBar(title: Text("SimpleDialogOption组件示例")),
        body: Center(
          child: SimpleDialog(
            title: const Text("对话框标题"),
            children: [
              SimpleDialogOption(
                onPressed: () {},
                child: Text("第一行信息"),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: Text("第二行信息"),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: Text("第三行信息"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
