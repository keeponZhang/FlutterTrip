import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "AspectRatio调整宽高比例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRatio调整宽高比例"),
      ),
      body: Container(
        height: 100.0,
        child: AspectRatio(
          // 设置宽高比例
          aspectRatio: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
