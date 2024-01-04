import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "ClipOval圆形裁剪示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipOval圆形裁剪示例"),
      ),
      body: Center(
        child: ClipOval(
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Image.asset(
              "images/8.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
