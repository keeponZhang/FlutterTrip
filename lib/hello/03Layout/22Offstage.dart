import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = "Offstage控制组件是否显示示例";

    return MaterialApp(title: appTitle, home: MyHomePage(title: appTitle));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool offstage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage,
          child: Text(
            "我出来啦",
            style: TextStyle(fontSize: 36.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: "显示隐藏",
        child: Icon(Icons.flip),
      ),
    );
  }
}
