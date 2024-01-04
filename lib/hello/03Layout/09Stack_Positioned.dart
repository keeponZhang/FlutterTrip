import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stack布局示例Positioned",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack布局示例Positioned"),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset("images/1.jpeg"),
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: Text(
                "乐迪加速",
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "serif",
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
