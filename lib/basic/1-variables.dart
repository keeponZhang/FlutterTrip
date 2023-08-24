void main() {
  // testVar();
  // testDynamic();
  // testObject();
  //
  // testDynamic2();
  // testVar2();
  // testObject2();
  //
  // testDynamicAndObject();
  //

  // testConst();
  // testConst2();
  testConst3();
}

void testVar() {
  var data;
  data = 1;
  data = "test";
  data = true;
}

void testVar2() {
  //这里有初始值后，赋值报错
  var data = 123;
  data = 1;
  print('data = $data');
  // data = "test";
  // data = true;
}

void testDynamic() {
  dynamic data;
  data = 1;
  data = "test";
  data = true;
}

void testDynamic2() {
  dynamic data = 123;
  data = 1;
  data = "test";
  data = true;
}

void testObject() {
  Object data;
  data = 1;
  data = "test";
  data = true;
}

void testObject2() {
  Object data = 2;
  data = 1;
  data = "test";
  data = true;
}

void testDynamicAndObject() {
  Object objectData = 2;
  dynamic dynamicData = 2;
  //dynamic编译期不检查
  // objectData.test();
  // dynamicData.test();
}
// var:如果没有初始值，可以变成任何类型。
// dynamic:动态任意类型，编译阶段不检查类型。
// Object:动态任意类型，编译阶段检查检查类型。
// 区别：
// 唯一区别 var 如果有初始值，类型被锁定。

void testFinalAndConst() {
  final String fVar = "test";
  // 赋值后不能再赋值
  // fVar = "test2";
  final fVar2 = "test";
  // fVar2 ="test2";

  const String cVar = "test";
  // cVar = "test2";
  const cVar2 = "test";
  // cVar2 = "test2";
}

void testConst() {
  const width = 100;
  const height = 100;
  const square = width * height;

  const list = const [];
  const list2 = [];
}

void testConst2() {
  var list3 = const [1, 2, 3];
  const list4 = const [1, 2, 3];
  final list5 = const [1, 2, 3];

  //不能更改，因为它指向的是一个const类型的数组
  // list3[0] = 2;
  // print('list3[0]=${list3[0]}');

  //不能更改
  // list4[0] = 2;
  // print('list4[0]=${list4[0]}');

  //不能更改
  list5[0] = 2;
  print('list5[0]=${list5[0]}');
}

void testConst3() {
  var list3 = const [1, 2, 3];
  const list4 = const [1, 2, 3];
  final list5 = const [1, 2, 3];

  //可以修改
  list3 = [3, 3];
  print('list3[0]=${list3}');

  //不能更改
  // list4 = [4, 4];
  print('list4[0]=${list4}');

  //不能更改
  // list5 = [5, 5];
  print('list5[0]=${list5}');
}
