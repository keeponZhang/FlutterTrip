void main() {
  // print(add());
  // print(add2(1, 2));
  // print(add3(4, 2));
  // print(add4(4, 2));

  addVariable(1, 2);
  addVariable([a = 1]);
}

int addVariable({int a, int b}) {
  return a + b;
}

add() {
  return null;
}

int add2(int a, int b) {
  return a + b;
}

int add3(int a, int b) => a + b;

int add4(int a, int b) {
  int add5(int a, int b) {
    return a + b + b;
  }

  return add5(a, b);
}
