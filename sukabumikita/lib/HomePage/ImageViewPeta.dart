import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';

class Peta extends StatefulWidget {
  const Peta({Key key}) : super(key: key);

  @override
  _PetaState createState() => _PetaState();
}

class _PetaState extends State<Peta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Container(
          child: PhotoView(
        imageProvider: AssetImage("images/peta.jpeg"),
      )),
    );
  }
}
