import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    controller.addListener(() {
      print("你输入的内容为:${controller.text}");
    });
    return MaterialApp(
      title: "TextField组件示例",
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField组件示例"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: controller,
              maxLength: 30,
              maxLines: 1,
              autocorrect: true,
              autofocus: true,
              obscureText: false,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26.0, color: Colors.green),
              onChanged: (text) {
                print("文本内容改变时回调$text");
              },
              onSubmitted: (text) {
                print("文本内容提交时回调$text");
              },
              enabled: true,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade200,
                filled: true,
                helperText: "用户名",
                prefixIcon: Icon(Icons.person),
                suffixText: "用户名",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
