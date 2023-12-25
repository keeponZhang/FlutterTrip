//同步生成器
//调用getSyncGenerator 立刻返回 Iterable
void main() {
  var it = getSyncGenerator(5).iterator;
  //  调用moveNext方法时getSyncGenerator才开始执行
  while (it.moveNext()) {
    print(it.current);
  }
}

//同步生成器： 使用sync*，返回的是Iterable对象
Iterable<int> getSyncGenerator(int n) sync* {
  print('start');
  int k = n;
  while (k > 0) {
    //yield会返回moveNext为true,并等待 moveNext 指令
    yield k--;
  }
  print('end');
}