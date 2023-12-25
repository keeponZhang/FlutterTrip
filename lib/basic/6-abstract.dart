void main() {
  var footMessage = Message("foot");
  var backMessage = Message("back");
  var specialMessage = Message("special");

  footMessage.doMessage();
  backMessage.doMessage();
  specialMessage.doMessage();

  var cf = new ClassFunction();
  var out = cf("dongnao","flutter","damon");
  print("$out");
  print(cf.runtimeType);
  print(out.runtimeType);
  print(cf is Function);

}

abstract class Message {
  //工厂构造方法
  factory Message(String type) {
    switch (type) {
      case "foot":
        return FootMessage();

      case "back":
        return BackMessage();

      case "special":
        return SpecialMessage();
    }
  }
  void doMessage(){}
}

class FootMessage implements Message {
  @override
  void doMessage() {
    print("脚底按摩");

  }
}

class BackMessage implements Message {
  @override
  void doMessage() {
    print("推背按摩");
  }
}

class SpecialMessage implements Message {
  @override
  void doMessage() {
    print("特殊按摩");
  }
}

class ClassFunction{
  call(String a,String b,String c) =>'$a $b $c';
}