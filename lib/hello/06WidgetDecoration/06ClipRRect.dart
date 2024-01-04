import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "ClipRRect圆角矩形裁剪示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect圆角矩形裁剪示例"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
