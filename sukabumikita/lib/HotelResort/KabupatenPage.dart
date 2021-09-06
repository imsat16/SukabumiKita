import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/KabupatenItem.dart';

class KabupatenPage extends StatelessWidget {
  const KabupatenPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: KabupatenItem(),
    );
  }
}