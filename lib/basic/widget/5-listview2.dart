import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("listview示例"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('favarite_border'),
            ),
            Divider(),
            NormalListVIewWidget(),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('favarite_border'),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('favarite_border'),
            ),
          ],
        ),
      ),
    );
  }
}

class NormalListVIewWidget extends StatelessWidget {
  const NormalListVIewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.favorite_border),
      title: Text('favarite_border NormalListVIewWidget'),
    );
  }
}


