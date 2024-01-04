import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Opacity不透明度示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container容器示例布局"),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.3,
          child: Container(
            width: 250.0,
            height: 100.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "不透明度0.3",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
