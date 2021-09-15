import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';

class Japort extends StatefulWidget {
  const Japort({Key key}) : super(key: key);

  @override
  _JaportState createState() => _JaportState();
}

class _JaportState extends State<Japort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Container(
          child: PhotoView(
        imageProvider: AssetImage("images/japort.jpeg"),
      )),
    );
  }
}
