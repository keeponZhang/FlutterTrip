import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello Flutter")),
        body: Center(
          child: Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 28.0),
          ),
        ),
      ),
    );
  }
}
