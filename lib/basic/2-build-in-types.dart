void main() {
  // testString();

  // testString2();
  // testString3();
testStringBuffer();
// testString4();
// testExpression();
// testBoolean();
// testList();
// testList2();
// testList3();
//   testSet();
testMap();
}

void testMap  () {
  Runes runes = Runes("\u{1f605} \u6211");
  var str = String.fromCharCodes(runes);
  print('str = $str');
}

void testSet() {
  Set set1 = Set();
  Set set2 = Set();
  set1.addAll([1, 2, 3, 4]);

  set2.addAll([1, 2, 3, 6]);
  var difference = set1.difference(set2);
  print('difference=$difference');

  var intersection = set1.intersection(set2);
  print('intersection=$intersection');

  var union = set1.union(set2);
  print('union=$union');

  set1.retainAll(set2);
  print('retainAll=$set1');
}


void testList() {
  //只能放置数量大小的元素，超过会崩溃
  List ls = List(3);
  ls.add(1);
  ls.add(2);
  ls.add(3);
  ls.add(4);
  print('ls = $ls');
}

void testList2() {
  //少于个数也会崩溃
  List ls = List(3);
  ls.add(1);
  print('ls = $ls');
}

void testList3() {
  List ls = List(3);
  ls[0] = 1;
  print('ls = $ls');
}

//记住一点：bool对象未初始化的默认值是null。这里看一个比较坑的地方：
void testBoolean() {
  bool isNull;
  if (!isNull) {
    print("aaaaaa");
  }
}

// https://blog.csdn.net/webor2006/article/details/119747431
// Dart 字符串是 UTF-16 编码的字符序列，可以使用单引号或者双引号来创建字符串。
void testString() {
  String s = "sksk" + "ss";
  String s2 = "kdkd" "ssss";
  print('s${s}');
  print('s2${s2}');
}

// 可以使用三个单引号或者双引号创建多行字符串对象
void testString2() {
  String s3 = ''' dd
  ddd
  geg''';
  print('s3]$s3');
}

//可以使用 r 前缀创建”原始raw”字符串。
void testString3() {
  String s3 = ''' ddddd\ngeg\n''';
  print('s3]$s3');

  String s4 = r''' ddddd\ngeg\n''';
  print('s4]$s4');
}

void testStringBuffer() {
  StringBuffer sb = StringBuffer();
  sb.write("kk");
  sb.write("dd");
  sb.write("ss");
  print('sb=$sb');
  //链式调用是两个点
  sb..write("keepon")..write("on");

  print('sb=$sb');
}

void testString4() {
  print(Map);

  print(String);

  print(int);
}

void testExpression() {
  int n = 2 + 2;
  String str1 = "The sume 1 and 1 is ${n}";
  print(str1);
}
