void main() {
  new Future(() => futureTask())
      .then((i) => "abc:$i")
      .then((m) => print("m=$m"))
      .then((_) => new Future.error("error!")
          .whenComplete(() => print("WhenTaskComplete")))
      .catchError((e) => print(e));
}

futureTask() {
  return 10;
}
