void main() {
  Bicycle().transport();
  Motocycle().transport();
  Car().transport();
}

//交通抽象类
abstract class Transportation {
  void transport();
}

//自行车
class Bicycle extends Transportation {
  String safeIndex() => "low";

  String powerUnit() => "2个轮子";

  String energy() => "脚蹬";

  @override
  void transport() {
    print('Bicycle:\npowerUnit: ${powerUnit()}, safeIndex: ${safeIndex()}, energy: ${energy()}');
  }
}

//摩托车
class Motocycle extends Transportation {
  String safeIndex() => "low";

  String powerUnit() => "2个轮子";

  String energy() => "汽油";

  @override
  void transport() {
    print('Motocycle:\npowerUnit: ${powerUnit()}, safeIndex: ${safeIndex()}, energy: ${energy()}');
  }
}

//汽车
class Car extends Transportation {
  String safeIndex() => "middle";

  String powerUnit() => "4个轮子";

  String energy() => "汽油";

  @override
  void transport() {
    print('Car:\npowerUnit: ${powerUnit()}, safeIndex: ${safeIndex()}, energy: ${energy()}');
  }
}


