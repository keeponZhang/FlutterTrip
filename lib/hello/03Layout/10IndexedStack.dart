import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "IndexedStack布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IndexedStack布局示例"),
        ),
        body: Center(
          child: IndexedStack(
            index: 0,
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
