import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'container 示例',
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.displaySmall.fontSize * 1.1 + 200.0,
      ),
      padding: const EdgeInsets.all(20.0),
      color: Colors.teal.shade700,
      alignment: Alignment.topRight,
      child: Text('Hello World', style: Theme.of(context).textTheme.displaySmall.copyWith(color: Colors.white)),
      foregroundDecoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://www.example.com/images/frame.png'),
          centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
        ),
      ),
      transform: Matrix4.rotationX(0.5),
    );
  }
}