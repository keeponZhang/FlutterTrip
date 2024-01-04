import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "导航页面示例",
        home: FirstScreen(),
      ),
    );

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航页面示例"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("查看商品详情页面"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航页面示例"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("返回上一个页面"),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
      ),
    );
  }
}
