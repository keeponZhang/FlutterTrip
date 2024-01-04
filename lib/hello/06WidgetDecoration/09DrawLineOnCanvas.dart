import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "CustomPaint绘制直线示例",
        debugShowCheckedModeBanner: false,
        home: LayoutDemo(),
      ),
    );

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomPaint绘制直线示例"),
      ),
      body: Center(
        child: CustomPaint(
          painter: LinePainter(),
          child: Center(
            child: Text(
              "绘制直线",
              style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  // 下面的语法是dart中的级联表达式
  // https://dart.dev/guides/language/language-tour#cascade-notation
  Paint _paint = Paint()
    ..color = Colors.black
    ..strokeCap = StrokeCap.square
    ..isAntiAlias = true
    ..strokeWidth = 3.0
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(20.0, 20.0), Offset(300.0, 20.0), _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
