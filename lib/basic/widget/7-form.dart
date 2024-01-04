import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("form示例"),
          ),
//          body: new GridViewWidget()),
          body: LoginPage()),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _userName;
  String _password;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0), //间隙
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: '请输入用户名'),
                    onSaved: (value) {
                      print('$value');
                      _userName = value;
                    },
                    onFieldSubmitted: (value) {
                      print('onFieldSubmitted : $value');
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: '请输入密码'),
                    onSaved: (value) {
                      print('$value');
                      _password = value;
                    },
                    validator: (value) {
                      //这里做个校验，如果不足6位给出错误提示
                      return value.length < 6 ? "密码长度不够6位" : null;
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: 400.0,
                    height: 40.0,
                    child: RaisedButton(
                      child: Text('登录'),
                      onPressed: () {
                        //TODO 进行登录
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


