import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stack布局示例Alignment",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack布局示例Alignment"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/1.jpeg"),
                radius: 100.0,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black38),
                child: Text(
                  "我是超级飞侠",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
