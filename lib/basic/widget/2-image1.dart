import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = true;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image示例"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.network(
                // "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3034071742,1954908597&fm=26&gp=0.jpg",
                "https://img2023.cnblogs.com/blog/35695/202311/35695-20231121143812081-926795020.png",
                width: 100.0,
                height: 100.0,
              ),Image.asset(
                // "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3034071742,1954908597&fm=26&gp=0.jpg",
                // "assets/image/mine.jpg",
                "images/type_train.png",
                width: 100.0,
                height: 100.0,
              ),    //Memory
              MemoryImageWidget(),
              FileImageWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

//stf StatefulWidget快捷键， stl StatelessWidget快捷键
class MemoryImageWidget extends StatefulWidget {
  @override
  _MemoryImageWidgetState createState() => _MemoryImageWidgetState();
}

class _MemoryImageWidgetState extends State<MemoryImageWidget> {
  Uint8List bytes;

  @override
  void initState() {
    super.initState();
    rootBundle.load('image/mine.jpg').then((data) {
      if (mounted) {
        setState(() {
          bytes = data.buffer.asUint8List();
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    final _decoration = BoxDecoration(
      image: bytes == null ? null : DecorationImage(image: MemoryImage(bytes)),
    );
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: _decoration,
    );
  }
}


class FileImageWidget extends StatefulWidget {
  @override
  _FileImageWidgetState createState() => _FileImageWidgetState();
}

class _FileImageWidgetState extends State<FileImageWidget> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: _image == null
              ? Text('未选择图片！')
              : Image.file(
            _image,
            width: 200.0,
            height: 200.0,
          ),
        ),
        FlatButton(
          onPressed: getImage,
          child: Text(
            '选择图片',
            style: TextStyle(
              color: Color(0xff0000ff),
            ),
          ),
        ),
      ],
    );
  }
}


