
void main(){
  getName();
  getName2();
  getName3();
}
Future getName() async{
  await getStr();
  print("getName");

}
getStr(){
  print("getStr");
  
}

getName2(){
  print("getName2");

}
getName3(){
  print("getName3");
}
//输出
// getStr
// getName2
// getName3
// getName