import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Transform矩阵转换示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform矩阵转换示例"),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Transform(
            alignment: Alignment.topRight,
            transform: Matrix4.rotationZ(0.5),
            child: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.red,
              child: Text("Transform矩阵"),
            ),
          ),
        ),
      ),
    );
  }
}
