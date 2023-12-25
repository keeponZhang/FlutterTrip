class DevFlutter {

  static DevFlutter _deFlutter;

  factory DevFlutter () => _deFlutter ??= DevFlutter._newInstance();

  DevFlutter._newInstance();

}

class Test {
  void start() {
    print(" Flutter... ");
  }
}