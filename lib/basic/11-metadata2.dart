import 'package:xiecheng_demo/basic/todo.dart';
import 'package:xiecheng_demo/basic/MyLib1.dart';

main() {
  dynamic tv = new Television();
  tv.doSomething();
}

class Television {
  @Todo(who: 'damon', what: 'create a new method')
  void doSomething() {
    print('doSomething');
  }
}