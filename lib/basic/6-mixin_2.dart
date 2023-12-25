void main(){
  var ab = AB();
  var ba = BA();
  var c = C();
  var cc = CC();

  print(ab.getMessage());
  print(ba.getMessage());
  print(c.getMessage());
  print(cc.getMessage());


  ///打印 B,A,C,B
}

class A {
  String getMessage() => 'A';
}

class B {
  String getMessage() => 'B';
}

class P {
  String getMessage() => 'P';
}

//优先最后一个
class AB extends P with A, B {}

class BA extends P with B, A {}

class C extends P with B, A {
  String getMessage() => 'C'; //优先级最高的是在具体类中的方法。
}

class CC extends P with B implements A {
} //这里的 implement 只是表明要实现 A 的方法，这个时候具体实现是再 B 中 mixin 了具体实现