import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icons示例"),
        ),
        body: Center(
          child: Column(
            //控件居中对齐
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.camera),
              SizedBox(height: 10),
              IconButton(
                icon: Icon(Icons.image),
                onPressed: () {
                  print("onPress");
                  Fluttertoast.showToast(msg: "show",toastLength: Toast.LENGTH_LONG);

                },

              ),
              RaisedButton(
                onPressed: null,
                //  onPressed: (){},
                child: const Text('Disabled      Button'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
