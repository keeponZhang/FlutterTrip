void main(){
  testFuture();

}
void testFuture() {
  Future f = new Future(() => print("1"));
  Future f1 = new Future(() => null);
  Future f2 = new Future(() => null);
  Future f3 = new Future(() => null);

  f3.then((_) => print("2"));
  f2.then((_) {
    print("3");
    new Future(() => print("4"));
    f1.then((_) {
      print("5");
    });
  });
  f1.then((m) {
    print("6");
  });
  print("7");
}