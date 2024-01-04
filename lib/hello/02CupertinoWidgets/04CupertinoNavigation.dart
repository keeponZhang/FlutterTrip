import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CupertinoButton导航组件集合示例",
      theme: ThemeData.light(),
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MYState createState() => _MYState();
}

class _MYState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.lightBackgroundGray,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "主页",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble),
              label: "聊天",
            ),
          ]),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(builder: (context) {
          switch (index) {
            case 0:
              return HomePage();
            case 1:
              return ChatPage();
            default:
              return Container();
          }
        });
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("主页")),
      child: Center(
        child: Text("主页", style: Theme.of(context).textTheme.button),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("聊天面板"),
        trailing: Icon(CupertinoIcons.add),
        leading: Icon(CupertinoIcons.back),
      ),
      child: Center(
        child: Text("聊天面板", style: Theme.of(context).textTheme.button),
      ),
    );
  }
}
