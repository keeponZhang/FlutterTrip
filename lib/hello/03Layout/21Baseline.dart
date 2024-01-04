import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Baseline基准线布局示例",
      home: LayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Baseline基准线布局示例"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Baseline(
              baseline: 80.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                "AaBbCc",
                style: TextStyle(
                  fontSize: 18.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            Baseline(
              baseline: 80.0,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                width: 40.0,
                height: 40.0,
                color: Colors.green,
              ),
            ),
            Baseline(
              baseline: 80.0,
              baselineType: TextBaseline.alphabetic,
              child: Text(
                "DdEeFf",
                style: TextStyle(
                  fontSize: 26.0,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ],
        ));
  }
}
