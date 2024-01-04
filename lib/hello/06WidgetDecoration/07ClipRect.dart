import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "ClipRect矩形裁剪示例",
      debugShowCheckedModeBanner: false,
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRect矩形裁剪示例"),
      ),
      body: Center(
        child: ClipRect(
          clipper: RectClipper(),
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

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(100.0, 100.0, size.width - 100, size.height - 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return true;
  }
}
