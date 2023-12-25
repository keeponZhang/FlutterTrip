/*这个dem0是用了material Design风格*/
import 'package:flutter/material.dart';
import 'package:xiecheng_demo/baseLearn/baseLeanrMain.dart';
import 'package:xiecheng_demo/navigator/tab_navigator.dart';

void main() => runApp(MyApp());
// void main() => runApp(BaseLearnApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '携程(伪)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabNavigator(),
    );
  }
}





