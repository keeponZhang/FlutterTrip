import 'package:flutter/material.dart';

import 'data_type.dart';

// void main() => runApp(MyApp());

class BaseLearnApp extends StatefulWidget {
  @override
  _BaseLearnAppState createState() => _BaseLearnAppState();
}

class _BaseLearnAppState extends State<BaseLearnApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter必备Dart基础',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter必备Dart基础'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,  this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
//    _oopLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
           DataType(),
          ],
        ),
      ),
    );
  }
}