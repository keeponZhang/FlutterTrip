void main(){
  ///使用泛型，很多的容器对象，在创建对象时都可以定义泛型类型,跟Java 一样
  var list = List<String>();
  list.add('1');
  list.add('2');
  list.add('4');
  print(list);

  /// Map 泛型 跟 Java 也都是一样
  var map = Map<int, String>();
  map[0] = '23';
  map[55] = '33';
  print(map);
}