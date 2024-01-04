import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  String? username;
  String? password;

  void login() {
    var loginForm = loginKey.currentState;
    if (loginForm != null && loginForm.validate()) {
      loginForm.save();
      print("userName:" + username! + ", password:" + password!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form表单示例"),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: loginKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "请输入用户名:"),
                      onSaved: (value) {
                        username = value;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: "请输入密码:"),
                      obscureText: true,
                      validator: (value) {
                        return (value?.length ?? 0) < 6 ? "密码长度不够6位" : null;
                      },
                      onSaved: (value) {
                        password = value;
                      },
                    ),
                    SizedBox(
                      width: 340.0,
                      height: 42.0,
                      child: ElevatedButton(
                        onPressed: login,
                        child: Text(
                          "登录",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
