import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
void main() => runApp(MyAppV2());

class MyAppV2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Drawer',
        home: Scaffold(
            appBar: AppBar(
                title: Text('Drawer')
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text('staven'),
                    accountEmail: Text('20287710@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/staven.png'),
                    ),
                    onDetailsPressed: () {},
                    otherAccountsPictures: <Widget>[
                      Container(
                          child: Image.asset('assets/images/flutter.png')
                      )
                    ],
                  ),
                  ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.color_lens),
                      ),
                      title: Text('个性装扮')
                  ),
                  ListTile(
                      leading: CircleAvatar(
                          child: Icon(Icons.photo)
                      ),
                      title: Text('我的相册')
                  )
                ],
              ),
            )
        )
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DrawerPage(),
    );
  }


}

class DrawerWeiget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DrawerWeigetState();
  }
}

class _DrawerWeigetState extends State<DrawerWeiget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      padding: const EdgeInsets.only(),
      children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: new Text('XXXXX'),
          accountEmail: new Text('XXXXXXXXXXX'),
          currentAccountPicture: new CircleAvatar(
            backgroundImage: new NetworkImage(
                'http://n.sinaimg.cn/translate/20170726/Zjd3-fyiiahz2863063.jpg'),
          ),
        ),
        new ListTile(
            title: new Text('lifecycle 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/LifecyclePage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('Route 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/RoutePage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('数据存储 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/DataPage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('Gesture 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/GesturePage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('加载图片 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/LoadImgPage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('网络请求 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/NetworkPage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('基础Widget 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/BaseWidgetPage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('进阶 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/AdvancedPage');
            }),
        new Divider(),
        new ListTile(
            title: new Text('Architecture 学习'),
            trailing: new Icon(Icons.arrow_right),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/ArchitecturePage');
            }),
        new Divider(),
      ],
    );
  }
}

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new DrawerWeiget(),
    );
  }
}


