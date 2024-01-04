import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "FittedBox缩放布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox缩放布局示例"),
      ),
      body: Container(
        color: Colors.grey,
        width: 250.0,
        height: 250.0,
        child: FittedBox(
          fit: BoxFit.fill ,
          alignment: Alignment.center,
          child: Container(
            color: Colors.deepOrange,
            child: Text("缩放布局"),
          ),
        ),
      ),
    );
  }
}
