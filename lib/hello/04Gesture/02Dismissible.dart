import 'package:flutter/material.dart';

void main() => runApp(
      new MaterialApp(
        title: "滑动删除示例",
        home: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  final List<String> items = List<String>.generate(30, (index) => "列表项$index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滑动删除示例"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (direction) {
              items.removeAt(index);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("$item 被删除了"),
                ),
              );
            },
            child: ListTile(
              title: Text("$item"),
            ),
          );
        },
      ),
    );
  }
}
