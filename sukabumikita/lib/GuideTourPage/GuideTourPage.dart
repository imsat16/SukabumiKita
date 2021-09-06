import 'package:flutter/material.dart';
import 'package:sukabumikita/GuideTourPage/GuideTourItem.dart';

class GuideTourPage extends StatelessWidget {
  const GuideTourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          GuideTourItem()
        ],
      ),),
        );
  }
}
