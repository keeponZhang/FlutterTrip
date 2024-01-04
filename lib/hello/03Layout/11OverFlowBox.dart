import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "OverFlowBox布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OverFlowBox布局示例"),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: EdgeInsets.all(50.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 400.0,
          maxHeight: 400.0,
          child: Container(
            color: Colors.blue,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}
