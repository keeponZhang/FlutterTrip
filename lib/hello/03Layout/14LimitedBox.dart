import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "LimitedBox设置尺寸示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox设置尺寸示例"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.green,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 100.0,
            child: Container(
              color: Colors.lightGreen,
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}
