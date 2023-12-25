void main() {
  //抛出Exception对象
  // throw new FormatException("格式异常"）;
  //抛出Error对象
  //     throw new OutOfMemoryError();
  //抛出任何非null异常
  //     throw "这是一个异常";

  // exception1();
  // exception2();
  // exception3();
  exception4();
}

void exception1() {
  try {
    throw NullThrownError();
  } catch (e, s) {
    // print(e);
    print(s);
  }
}

void exception2() {
  try {
    throw NullThrownError();
  } on Error {
    //on捕获后不会执行catch
    print("error 类型异常捕获");
  }
  catch (e, s) {
    // print(e);
    print(s);
  }
}

void exception3() {
  try {
    throw FormatException("格式异常");
  } on Error {
    //on捕获后不会执行catch
    print("error 类型异常捕获");
  } on Exception {
    //on捕获后不会执行catch
    print("exception 类型异常捕获");
  } catch (e, s) {
// print(e);
    print(s);
  }
}
  void exception4() {
    try {
      throw FormatException("格式异常");
    } on Error {
      //on捕获后不会执行catch
      print("error 类型异常捕获");
    } on Exception catch (e) {
      //on捕获后不会执行catch
      print("exception 类型异常捕获");
      print("exception e=$e");
    }
    catch (e, s) {
      // print(e);
      print(s);
    }
  }