void main() {
  Bicycle().transport();
  Motorcycle().transport();
  Car().transport();
  //四轮木制脚踏车
  WoodenCar().transport();

  /// 打印内容
  // 自行车:
  // 动力组件: 两个轮子 , 安全指数： low , 动力来源：全靠腿登
  // 摩托车:
  // 动力组件: 两个轮子 , 安全指数： low , 动力来源：汽油
  // 汽车:
  // 动力组件: 四个轮子 , 安全指数： middle , 动力来源：汽油
  // 四轮木制脚踏车:
  // 动力组件: 四个轮子 ， 安全指数： middle ， 动力来源：汽油
}


//交通工具类，拥有运输功能
abstract class Transportation {
  //运输功能
  void transport();
}

//双轮交通工具
class TwoWheelTransportation {
  String powerUnit() => "两个轮子";
}

//四轮交通工具，一般来说安全性能为中
class FourWheelTransportation {
  String powerUnit() => "四个轮子";
}

//安全指数中等的交通工具
class MiddleSafetyIndex {
  String safetyIndex() => "middle";
}

//安全指数低的交通工具
class LowSafetyIndex {
  String safetyIndex() => "low";
}

//人力发动机
class BodyEnergyTransportation {
  String energy() => "全靠腿登";
}

//汽油能源交通工具
class GasolineEnergyTransportation {
  String energy() => "汽油";
}

//自行车
class Bicycle extends Transportation
    with TwoWheelTransportation, LowSafetyIndex, BodyEnergyTransportation {
  @override
  void transport() {
    print(
        "自行车:\n动力组件: ${powerUnit()} , 安全指数： ${safetyIndex()} , 动力来源：${energy()}");
  }
}

//摩托车
class Motorcycle extends Transportation
    with TwoWheelTransportation, LowSafetyIndex, GasolineEnergyTransportation {
  @override
  void transport() {
    print(
        "摩托车:\n动力组件: ${powerUnit()} , 安全指数： ${safetyIndex()} , 动力来源：${energy()}");
  }
}

//汽车
class Car extends Transportation
    with
        FourWheelTransportation,
        MiddleSafetyIndex,
        GasolineEnergyTransportation {
  @override
  void transport() {
    print(
        "汽车:\n动力组件: ${powerUnit()} , 安全指数： ${safetyIndex()} , 动力来源：${energy()}");
  }
}

//四轮木制脚踏车
class WoodenCar extends Car
{
  @override
  void transport() {
    print(
        "四轮木制脚踏车:\n动力组件: ${powerUnit()} ， 安全指数： ${safetyIndex()} ， 动力来源：${energy()}");
  }
}