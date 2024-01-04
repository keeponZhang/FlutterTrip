import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: "使用自定义字体",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("使用自定义字体"),
      ),
      body: Center(
        child: Text(
          "你好, flutter",
          style: TextStyle(fontFamily: "myfont", fontSize: 36.0),
        ),
      ),
    );
  }
}
