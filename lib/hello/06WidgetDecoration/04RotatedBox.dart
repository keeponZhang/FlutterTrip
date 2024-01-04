import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "RotatedBox旋转盒子示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RotatedBox旋转盒子示例"),
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            "RotatedBox旋转盒子示例",
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
