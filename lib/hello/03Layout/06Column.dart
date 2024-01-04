import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "垂直布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("垂直布局示例"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "左侧文本",
            textAlign: TextAlign.center,
          ),
          Text(
            "中间文本",
            textAlign: TextAlign.center,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: FlutterLogo(),
          ),
          Text(
            "Flutter",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36.0),
          ),
        ],
      ),
    );
  }
}
