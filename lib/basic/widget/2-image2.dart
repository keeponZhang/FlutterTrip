import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image示例"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                // "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3034071742,1954908597&fm=26&gp=0.jpg",
                // "assets/image/mine.jpg",
                "images/type_train.png",
                width: 100.0,
                height: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}


