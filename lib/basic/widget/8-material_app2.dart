import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialApp示例'),
        centerTitle: true,//标题居中
        leading: Icon(Icons.start),//左侧增加一个图标
        elevation: 0.0,//标题下面的阴影控制
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/other');
        },
        tooltip: '路由跳转',
        foregroundColor: Color(0xffffffff),
        backgroundColor: Color(0xff000000),
        //阴影
        elevation: 0.0,
        child: Icon(Icons.arrow_forward),
//        shape: RoundedRectangleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            // title: Text('信息'),
            label: ('信息'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            // title: Text('通讯录'),
            label: ('通讯录'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            // title: Text('发现'),
            label: ('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            // label: Text('我'),
            label: ('我'),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}


