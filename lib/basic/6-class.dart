void main() {
//普通构造函数
  var p = new Point(1, 1); //new 可省略 var point = Point(1, 2);
  print(p);
//  print(p.runtimeType); //可以使用Object类的runtimeType属性,获取对象的类型


 // 这样会报错
 // Point2 p2 = const Point2(1,2);
 Point3 p3 = const Point3(1,2);
 Point3 point3 =const Point3(1,2);
 //这里返回true
 print(identical(p3,point3));


}

class Point {
  num x;
  num y;

  //普通构造函数 Java 形式
  // Point(num x, num y){
  //   this.x = x;
  //   this.y = y;
  // }

  //简化构造 Dart 形式
  Point(this.x, this.y);

  //命名构造函数
  Point.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  //重定向构造函数，使用冒号调用其他构造函数
  Point.alongXAxis(num x) : this(x, 0);

  @override
  String toString() {
    // TODO: implement toString
    return 'Point(x = $x, y = $y)';
  }
}

class Point2 {
  num x;
  num y;
  final num distance;

  //普通构造函数 Java 形式
  // Point(num x, num y){
  //   this.x = x;
  //   this.y = y;
  // }

  //简化构造 Dart 形式
  // Point(this.x, this.y);

  Point2(x, y)
      : x = x,
        y = y,
        distance = y * x;

  @override
  String toString() {
    // TODO: implement toString
    return 'Point(x = $x, y = $y)';
  }
}

//常量构造函数
class Point3 {
  //用const也要报错
  // const num x;
  final num x;
  final num y;


  //const 关键字放在构造函数名称之前，且不能有函数体
 const Point3(this.x, this.y);



  @override
  String toString() {
    // TODO: implement toString
    return 'Point(x = $x, y = $y)';
  }
}
