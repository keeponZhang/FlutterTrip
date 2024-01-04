import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Align对齐布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Align对齐布局示例"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: FractionalOffset.topLeft,
            child: Image.asset(
              "images/1.jpeg",
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.topRight,
            child: Image.asset(
              "images/2.jpeg",
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset(
              "images/3.jpeg",
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset(
              "images/4.jpeg",
              width: 128.0,
              height: 128.0,
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset(
              "images/5.jpeg",
              width: 128.0,
              height: 128.0,
            ),
          ),
        ],
      ),
    );
  }
}
