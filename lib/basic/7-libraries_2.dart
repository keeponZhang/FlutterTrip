void main(){
  //泛型函数
  K addCache<K, V>(K key, V value) {
    K temp = key;
    print('key:$key ,value: $value');
    return temp;
  }

  var key  = addCache(5, '5');
  print(key);
  print(key.runtimeType);
}