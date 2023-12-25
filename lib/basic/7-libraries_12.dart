// 1. a.dart。
// part of libs;
//
// void printA() => print('A');
//
// 2. b.dart。
// part of libs;
//
// void printB() => print('B');
//
// 3. libs 库
// library libs;
//
// part 'util.dart';
//
// part 'tool.dart';
//
// void printLibs() => print('libs');
//
// ///开始调用
// //import 'lib/libs.dart';//载入自定义库
//
// void main(){
// //载入自定义库
// printA();
// printB();
// printLibs();
// }
//
//
//