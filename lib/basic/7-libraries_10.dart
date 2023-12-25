import 'package:xiecheng_demo/basic/MyLib1.dart';
///注意：如果两个库有冲突的标识符，可以为其中一个或两个库都指定前缀:
import 'package:xiecheng_demo/basic/MyLib1.dart' as lib1;
import 'package:xiecheng_demo/basic/MyLib2.dart' as lib2 hide Test;

void main(){
  var myLib = lib1.Test();

  //这里会报错
  // var myLib2 = lib2.Test();
}