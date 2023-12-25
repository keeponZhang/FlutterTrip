
import 'package:xiecheng_demo/basic/MyLib1.dart' deferred as defelib;//延迟载入

void main(){
  //延迟载入
  deferredLoad();
}

//延迟载入
//可提高程序启动速度
//用在不常使用的功能
//用在载入时间过长的包
void deferredLoad() async{
  await defelib.loadLibrary();
  var test = defelib.Test;
}