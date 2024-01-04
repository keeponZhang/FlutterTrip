import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() => runApp(
      new MaterialApp(
        title: "加载配置文件",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _message = "";

  Future<void> loadAssetConfigFile() async {
    var jsonConfig = await rootBundle.loadString("assets/config.json");
    setState(() {
      _message = jsonDecode(jsonConfig)["message"];
    });
  }

  @override
  void initState() {
    super.initState();
    loadAssetConfigFile();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(_message),
    );
  }
}
