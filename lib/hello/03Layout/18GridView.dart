import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "GridView布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Container> _buildGridTitleList(int count) {
      return List<Container>.generate(
        count,
        (index) => Container(
          child: Image.asset("images/${index + 1}.jpeg"),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("GridView布局示例"),
      ),
      body: Center(
        child: GridView.extent(
          maxCrossAxisExtent: 150.0,
          padding: EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: _buildGridTitleList(9),
        ),
      ),
    );
  }
}
