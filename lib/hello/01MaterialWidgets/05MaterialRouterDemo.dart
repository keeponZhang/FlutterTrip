import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialApp示例",
      routes: {
        "first": (context) => FirstPage(),
        "second": (context) => SecondPage()
      },
      initialRoute: "first",
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
          onPressed: (){
            Navigator.pushNamed(context, "second");
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to First Page"),
          onPressed: (){
            Navigator.pushNamed(context, "first");
          },
        ),
      ),
    );
  }
}
