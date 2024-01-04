import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Table布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table布局示例"),
      ),
      body: Center(
        child: Table(
          columnWidths: {
            0: FixedColumnWidth(100.0),
            1: FixedColumnWidth(40.0),
            2: FixedColumnWidth(80.0),
            3: FixedColumnWidth(80.0),
          },
          border: TableBorder.all(
            color: Colors.black38,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          children: [
            TableRow(
              children: [
                Text("姓名"),
                Text("性别"),
                Text("年龄"),
                Text("身高"),
              ],
            ),
            TableRow(
              children: [
                Text("张三"),
                Text("男"),
                Text("20"),
                Text("170"),
              ],
            ),
            TableRow(
              children: [
                Text("李四"),
                Text("女"),
                Text("26"),
                Text("168"),
              ],
            ),
            TableRow(
              children: [
                Text("王五"),
                Text("男"),
                Text("29"),
                Text("180"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
