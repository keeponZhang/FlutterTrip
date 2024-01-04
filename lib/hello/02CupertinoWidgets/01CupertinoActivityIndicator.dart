import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CupertinoActivityIndicator示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("CupertinoActivityIndicator示例"),
        ),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 60.0,
          ),
        ),
      ),
    );
  }
}
