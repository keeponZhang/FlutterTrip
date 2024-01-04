import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextButton示例",
      home: Scaffold(
        appBar: AppBar(title: Text("TextButton示例")),
        body: Center(
          child: TextButton(
            child: Text("TextButton示例"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
