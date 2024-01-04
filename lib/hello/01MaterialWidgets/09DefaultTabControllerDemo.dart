import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Tab> mytabs = [Tab(text: "选项卡一"), Tab(text: "选项卡二")];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DefaultTabController示例",
      home: DefaultTabController(
        length: mytabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("AppBar标题"),
            bottom: TabBar(tabs: mytabs),
          ),
          body: TabBarView(
            children: mytabs
                .map(
                  (Tab tab) => Container(
                    child: Text(tab.text ?? "no text"),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
