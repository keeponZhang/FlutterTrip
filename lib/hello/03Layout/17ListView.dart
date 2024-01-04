import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "ListView布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView布局示例"),
      ),
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                "AAAAA",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
              ),
              subtitle: Text("aaaaaa"),
              leading: Icon(
                Icons.fastfood,
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text(
                "BBBBBB",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
              ),
              subtitle: Text("bbb"),
              leading: Icon(
                Icons.airplay,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                "CCCCCCCCC",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
              ),
              subtitle: Text("cccc"),
              leading: Icon(
                Icons.computer,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
