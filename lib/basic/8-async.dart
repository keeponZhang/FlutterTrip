
void main(){
  getName();
}
Future getName() async{
  await getStr();
  print("getName");

}
getStr(){
  print("getStr");

}