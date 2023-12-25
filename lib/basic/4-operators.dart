void main() {
  // questionMarkDemo();
  // isDemo();
  // doubleQuestionMarkDemo();
  doubleQuestionMarkDemo2();
}

void questionMarkDemo() {
  print("-------questionMarkDemo---");

  String s;
  // print(s.length);
  // print(s?.length);
  print(s != null ? s.length : "null");

  print(1 / 2);
  print(1 ~/ 2);
}

void isDemo() {
  num n = 1;
  num n1 = 1.0;
  int i = n as int;
  print(n is int);
  print(n is! int);
}

void doubleQuestionMarkDemo() {
  print("-------doubleQuestionMarkDemo---");

  bool isNull = false;
  String sJava = isNull ? "aaa" : "bbb";
  print(sJava);

  bool isPaused;
  isPaused = isPaused ?? false;
  print(isPaused);

}

void doubleQuestionMarkDemo2() {
  print("-------doubleQuestionMarkDemo2---");

String str;
print(str??="kkk");
str = "aaaa";
print(str??="kkk");


}
