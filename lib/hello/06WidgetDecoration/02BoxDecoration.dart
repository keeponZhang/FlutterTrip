import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "BoxDecoration装饰盒子-背景图示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BoxDecoration装饰盒子-背景图示例"),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: ExactAssetImage("images/1.jpeg"),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.blue,
              width: 4.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8.0,
                spreadRadius: 8.0,
                offset: Offset(-1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
