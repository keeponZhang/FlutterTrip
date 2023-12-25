void main(){
  //构造函数泛型
  var p = Phone<String>('Flutter');
  print(p.text);
}

class Phone<T> {
  final T text;
  Phone(this.text);
}