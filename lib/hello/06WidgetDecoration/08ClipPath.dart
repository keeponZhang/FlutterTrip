import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "ClipPath路径裁剪示例",
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
        title: Text("ClipPath路径裁剪示例"),
      ),
      body: Center(
        child: ClipPath(
          clipper: TriangleClipper(),
          child: SizedBox(
            width: 100.0,
            height: 100.0,
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

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // 以左上角做原点
    path.moveTo(0.0, 0.0);
    path.lineTo(100.0, 100.0);
    path.lineTo(100.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
