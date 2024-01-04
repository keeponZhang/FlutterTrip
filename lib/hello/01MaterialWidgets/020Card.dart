import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var card = SizedBox(
      // height: 250.0,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(
                "这是一个地址",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text("公司名字"),
              leading: Icon(Icons.home, color: Colors.lightBlue),
            ),
            Divider(),
            ListTile(
              title: Text(
                "这是一个地址",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              subtitle: Text("学校名字"),
              leading: Icon(Icons.school, color: Colors.lightBlue),
            ),
            Divider()
          ],
        ),
      ),
    );

    return MaterialApp(
      title: "Card组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card组件示例"),
        ),
        body: Center(child: card),
      ),
    );
  }
}
