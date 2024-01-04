import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp示例",
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text("AppBar应用示例"),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search), tooltip: "Search"),
            IconButton(onPressed: () {}, icon: Icon(Icons.add), tooltip: "Add"),
          ],
        ),
        body: Center(
          child: Text("AppBar应用示例"),
        ),
      ),
    );
  }
}
