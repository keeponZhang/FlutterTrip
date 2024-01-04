import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Center居中布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Center居中布局示例"),
      ),
      body: Center(
        child: Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 36.0),
        ),
      ),
    );
  }
}
