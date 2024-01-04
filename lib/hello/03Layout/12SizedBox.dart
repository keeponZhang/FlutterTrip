import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "SizedBox设置尺寸示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox设置尺寸示例"),
      ),
      body: SizedBox(
        width: 200.0,
        height: 300.0,
        child: Card(
          child: Text(
            "SizedBox",
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
    );
  }
}
