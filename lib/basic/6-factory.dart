void main() {
  var obj1 = Singleton();
  var obj2 = Singleton();
  print(identical(obj1, obj2));

  var rectangle = Rectangle(0,0,1,1);
  print(rectangle.left);
  rectangle.right = 2;
  print(rectangle.left);

}

class Singleton {
  String name;

  //工厂构造函数无法访问this，所以要用static
  static Singleton _cache;

  //定义一个命名构造函数来生产实例
  Singleton._newObject(this.name);

  //工厂构造函数，关键字factory，不用自动生成实例，不像普通构造函数那样
  factory Singleton([String name = "singleton"]) =>
      Singleton._cache ??= Singleton._newObject(name);
}

class Rectangle {
  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left, this.top, this.width, this.height);

  set right(num value) => left = value - width;

  num get bottom => top + height;

  set bottom(num value) => top = value - height;
}
