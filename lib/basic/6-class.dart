void main(){
//普通构造函数
var p = new Point(1, 1); //new 可省略 var point = Point(1, 2);
print(p);
//  print(p.runtimeType); //可以使用Object类的runtimeType属性,获取对象的类型
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
  Point.fromJson(Map json){
    x = json['x'];
    y = json['y'];
  }
  @override
  String toString() {
    // TODO: implement toString
    return 'Point(x = $x, y = $y)';
  }
}