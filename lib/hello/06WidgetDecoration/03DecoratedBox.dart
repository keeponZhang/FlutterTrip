import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "DecoratedBox装饰盒子渐变效果示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DecoratedBox装饰盒子渐变效果示例"),
      ),
      body: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset(0.5, 0.0),
                end: FractionalOffset(1.0, 1.0),
                colors: [
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                  Colors.grey,
                ],
              ),
            ),
            child: Container(
              width: 280.0,
              height: 280.0,
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  "LinearGradient线性渐变效果",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                  ),
                ),
              ),
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-0.0, -0.0),
                radius: 0.50,
                colors: [
                  Colors.red,
                  Colors.green,
                  Colors.blue,
                  Colors.grey,
                ],
              ),
            ),
            child: Container(
              width: 280.0,
              height: 280.0,
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  "RadialGradient环形渐变效果",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
