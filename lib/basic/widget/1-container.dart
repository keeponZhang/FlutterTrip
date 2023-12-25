import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  //去掉debug标志
  debugShowCheckedModeBanner: false,
  title: 'container 示例',
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: const Color(0xFF00FFf0),
        width: 200.0,
        height: 200.0,
        child: Text("Container",style: TextStyle(fontSize: 28),),
      ),
    );
  }
}