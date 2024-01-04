import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FloatActionBar示例",
        home: Scaffold(
          appBar: AppBar(
            title: Text("FloatActionBar示例"),
          ),
          floatingActionButton: FloatingActionButtonWrapper(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}

// 实际使用的时候发现必须将ScaffoldMessenger保证在一个Widget里面才能正常工作
// https://stackoverflow.com/questions/66833689/flutter-no-scaffoldmessenger-widget-found
class FloatingActionButtonWrapper extends StatelessWidget {
  const FloatingActionButtonWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("You clicked me !")));
      },
      child: const Icon(Icons.add),
      mini: false,
      shape: CircleBorder(),
      isExtended: false,
      tooltip: "Click Me",
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      // 未点击阴影值
      elevation: 7.0,
      highlightElevation: 14.0,
    );
  }
}
