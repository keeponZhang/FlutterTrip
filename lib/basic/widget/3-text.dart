import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text示例"),
        ),
        body: Center(
          child: Column(
            //控件居中对齐
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'tttttttttttttttttttttttttttkkkkkkkkkkkkkkkkssssssssssssstestlkdkdkkdtttttttttttttttttttttttttttkkkkkkkkkkkkkkkkssssssssssssstestlkdkdkkd',
                maxLines: 1,
                //省略显示
                // overflow: TextOverflow.ellipsis,
                //底部有一层阴影效果
                overflow: TextOverflow.fade,
                //设置删除线
                style: TextStyle(
                    decoration: TextDecoration.lineThrough, fontSize: 30),
              ),
              RichText(
                text: TextSpan(
                  text: 'Hello', // default text style
                  children: <TextSpan>[
                    TextSpan(
                        text: 'click   ',
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 30,
                            color: Colors.lightBlue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            print("点击了");
                            String url = "http://www.baidu.com";
                            if (await canLaunch(url)) {
                              await launch(url);
                              
                            } else {

                            }
                          }),
                    TextSpan(
                        text: 'beautiful world',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 60.0,
                            color: Colors.red)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
