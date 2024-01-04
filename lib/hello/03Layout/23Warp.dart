import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wrap按宽高自动换行布局示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap按宽高自动换行布局示例"),
        ),
        body: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: [
            Chip(
              label: Text("西门吹雪"),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightGreen.shade800,
                child: Text(
                  "西门",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text("上官婉儿"),
              avatar: CircleAvatar(
                backgroundColor: Colors.red.shade800,
                child: Text(
                  "上官",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text("司空摘星"),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue.shade700,
                child: Text(
                  "司空",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
            Chip(
              label: Text("欧阳欧巴"),
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue.shade700,
                child: Text(
                  "欧阳",
                  style: TextStyle(fontSize: 10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
