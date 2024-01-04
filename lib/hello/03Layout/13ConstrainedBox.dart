import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "ConstrainedBox设置尺寸示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox设置尺寸示例"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 150.0,
          minHeight: 150.0,
          maxWidth: 200.0,
          maxHeight: 200.0,
        ),
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.green,
        ),
      ),
    );
  }
}
