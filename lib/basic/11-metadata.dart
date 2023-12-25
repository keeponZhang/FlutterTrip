main() {
  dynamic tv = new Television();
  tv.activate();
  tv.turnOn();
}

class Television {
  @deprecated
  void activate() {
    turnOn();
  }

  void turnOn() {
    print('Television turn on!');
  }

  @override
  noSuchMethod(Invocation mirror) {
    print('没有找到方法');
  }
}