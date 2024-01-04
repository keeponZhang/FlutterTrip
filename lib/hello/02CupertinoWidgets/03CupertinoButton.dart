import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CupertinoButton组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CupertinoButton组件示例"),
        ),
        body: Center(
          child: CupertinoButton(
              child: Text("CupertinoButton"),
              onPressed: () {},
              color: Colors.blue),
        ),
      ),
    );
  }
}
