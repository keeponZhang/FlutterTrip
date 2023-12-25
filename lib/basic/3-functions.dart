void main() {
  // print(add());
  // print(add2(1, 2));
  // print(add3(4, 2));
  // print(add4(4, 2));

  // var result = addVariable(1);
  // //可选参数必须带上参数名
  // var result2 = addVariable(1, a: 3, b: 4);
  // print('result =$result');
  // print('result2 =$result2');
  // var resultV2 = addVariableV2(1);
  // var resultV2_2 = addVariableV2(1, 3);
  // print('resultV2 =$resultV2');
  // print('resultV2_2 =$resultV2_2');

  /*匿名函数*/
  var printFun = () => print('abc');
  var printFun1 = {() => print('abc')};
  // printFun();
  //
  // var printFun2 = (name) => print('abc$name');
  // printFun2('keepon');
  //
  // (()=>print('keepon2'))();
  //

  var ls = ['aaa', 'bbb', 'ccc'];
  print(test(ls, (str) => str * 2));
  ls.forEach((e) => print("forEach e=$e"));

  //闭包
  var addFunc  = makeAndFuc(12);
  print(addFunc(22));
  print(addFunc(22).runtimeType);

  //函数别名
  MyFunc myFunc = add2NoReturn(11, 22);
  myFunc = divide2NoReturn(11, 33);

}
calculator(int a,int b,MyFunc func){
  func(a,b);

}

typedef MyFunc(int a, int b);

//返回的是一个匿名函数,可以获取返回类型
Function makeAndFuc(int a) {
  return (int y) => a + y;
}

List test(List list, String func(str)) {
  for (var i = 0; i < list.length; i++) {
    list[i] = func(list[i]);
  }
  return list;
}

int addVariable(int c, {int a = 1, int b = 2}) {
  return c + a + b;
}

int addVariableV2(int c, [int a = 1, int b = 2]) {
  return c + a + b;
}

//没有默认值调用可能会报错
int addVariableV3(int c, [int a, int b]) {
  return c + a + b;
}

void addList({List list = const [1, 2, 3]}) {}

add() {
  return null;
}

int add2(int a, int b) {
  return a + b;
}

add2NoReturn(int a, int b) {
  a + b;
}
divide2NoReturn(int a, int b) {
  a * b;
}

int add3(int a, int b) => a + b;

int add4(int a, int b) {
  int add5(int a, int b) {
    return a + b + b;
  }

  return add5(a, b);
}
