import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Container容器布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      // decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset("images/1.jpeg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset("images/2.jpeg"),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset("images/3.jpeg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset("images/4.jpeg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Container容器示例布局"),
      ),
      body: container,
    );
  }
}
