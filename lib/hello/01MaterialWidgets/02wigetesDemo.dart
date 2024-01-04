import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(WidgetsDemoApp());

class WidgetsDemoApp extends StatelessWidget {
  const WidgetsDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "容器组件示例",
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          primaryColor: Colors.lightGreen[600],
          accentColor: Colors.orange[600]),
      home: Scaffold(
        appBar: AppBar(title: Text("容器组件示例")),
        body: Column(
          children: [
            ContainerDemo(),
            TextDemo(),
            ImageDemo(),
            IconDemo(),
            IconButtonDemo(),
            ElevatedButtonDemo(),
            // listView 不能直接放置在Column里面，需要使用Container限定高度
            // https://stackoverflow.com/questions/45669202/how-to-add-a-listview-to-a-column-in-flutter
            Container(
              height: 120,
              child: ListViewDemo(),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 8.0),
        borderRadius: const BorderRadius.all(
          const Radius.circular(8.0),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        "容器示例",
        style: TextStyle(color: Colors.orange),
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "文本组件",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28.0),
        ),
        Text(
          "红色字体+黑色删除线+18号+斜体+粗体",
          style: TextStyle(
              color: Colors.red,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.black,
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0),
        ),
        Text(
          "橙色字体+下划线+24号",
          style: TextStyle(
            color: Colors.orange,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            fontSize: 24.0,
          ),
        ),
        Text(
          "上划线+虚线+23号",
          style: TextStyle(
            decoration: TextDecoration.overline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.dashed,
            fontSize: 23.0,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "23号+斜体+加粗+字间距6",
          style: TextStyle(
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 6),
        ),
      ],
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
          fit: BoxFit.fitWidth),
    );
  }
}

class IconDemo extends StatelessWidget {
  const IconDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.phone,
      color: Colors.green[500],
      size: 40.0,
    );
  }
}

class IconButtonDemo extends StatelessWidget {
  const IconButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          print("按下操作");
        },
        tooltip: "按下操作",
        icon: Icon(
          Icons.volume_up,
          size: 48,
        ));
  }
}

class ElevatedButtonDemo extends StatelessWidget {
  const ElevatedButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("ElevatedButton: 打开百度"),
      onPressed: () {
        const url = "https://www.baidu.com";
        launch(url);
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.red, // background
        onPrimary: Colors.white, // foreground
      ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text("Alarm"),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("Phone"),
        ),
        ListTile(
          leading: Icon(Icons.airplay),
          title: Text("Airplay"),
        ),
      ],
    );
  }
}
