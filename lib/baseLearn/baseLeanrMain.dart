import 'package:flutter/material.dart';
import 'package:xiecheng_demo/baseLearn/plugin_use.dart';
import 'package:xiecheng_demo/baseLearn/testFunction.dart';

import 'data_type.dart';
import 'generic_learn.dart';
import 'oop_learn.dart';

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
   _oopLearn();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
           // DataType(),
           PluginUse(),
          ],
        ),
      ),
    );
  }

  _oopLearn() {
    print('工厂模式');
    Logger log1 = Logger('工厂1');
    Logger log2 = Logger('工厂1');
    print(log1 == log2);

    Student stu1 = Student('北大', '小铜钱', 12, city: '海淀');
    stu1.school = '987';
    print('面向对象');
    print(stu1.toString());

    Student stu2 = Student('北大', '小铜钱', 132, city: '海淀', country: '美国');
    print(stu2.toString());

    StudyFlutter studyFlutter = StudyFlutter();
    studyFlutter.study();

  }

  _functionLearn() {
    TestFunction testFunction = TestFunction();
    testFunction.start();
  }

  _testGeneric() {
    TestGeneric testGeneric = TestGeneric();
    testGeneric.start();
  }

}