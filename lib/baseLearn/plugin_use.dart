import 'package:flutter/material.dart';
import 'package:xiecheng_demo/baseLearn/data_type.dart';
import 'package:xiecheng_demo/baseLearn/generic_learn.dart';
import 'package:xiecheng_demo/baseLearn/oop_learn.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

void main() {
  runApp(const PluginUse());
}
class PluginUse extends StatefulWidget {
  const PluginUse({Key key}) : super(key: key);
  @override
  State<PluginUse> createState() => _PluginUseState();
}

class _PluginUseState extends State<PluginUse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text('Flutter插件的使用',style: TextStyle(color: ColorUtil.color('#009900'))),

    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Flutter插件的使用'),
    //     leading: GestureDetector(
    //       onTap: () {
    //         Navigator.pop(context);
    //       },
    //       child: const Icon(Icons.arrow_back),
    //     ),
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children:<Widget>[
    //         Text(
    //           'Flutter插件的使用',
    //           style: TextStyle(color: ColorUtil.color('#899900')),
    //         ),
    //       ],
    //     ),
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: (){},
    //     tooltip: 'Increment',
    //     child: const Icon(Icons.add),
    //   ), // This trailing comma makes auto-formatting nicer for build methods.
    // );
  }
}
