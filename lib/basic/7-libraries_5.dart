void main(){
  //运行时可判断泛型
  var names = List<String>();
  print(names is List<String>);
  print(names.runtimeType);
}