void main(){
  //泛型限制， 通过 extends 关键字限定可泛型使用的类型
  var footMassage = FootMassage();
  var m = Massage<FootMassage>(footMassage);
  m.massage.doMassage();
}

//泛型限制
class Massage<T extends FootMassage > {
  final T massage;
  Massage(this.massage);
}

class FootMassage {
  void doMassage() {
    print('脚底按摩');
  }
}

