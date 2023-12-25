import 'dart:async';
//同步生成器
//调用getSyncGenerator 立刻返回 Iterable
void main(){
  //异步
  getAsyncRecursiveGenerator(5).listen((value) => print(value));
}

//异步递归生成器
Stream<int> getAsyncRecursiveGenerator(int n) async* {
  if (n > 0) {
    yield n;
    yield* getAsyncRecursiveGenerator(n - 1);
  }
}