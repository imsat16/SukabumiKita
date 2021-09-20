import 'package:flutter/material.dart';
import 'package:sukabumikita/Guide/GuideTourItem.dart';

class GuideTourPage extends StatelessWidget {
  const GuideTourPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        centerTitle: true,
        leading: IconButton(
          // 1
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).maybePop();
          },
        ),
        title: Text(
          "RESTAURANT",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [GuideTourItem()],
        ),
      ),
    );
  }
}
