import 'package:flutter/material.dart';
import 'package:sukabumikita/Umkm/UmkmKabItem.dart';
import 'package:sukabumikita/VacationPage/VKotaItem.dart';

class UmkmKotaPage extends StatefulWidget {
  const UmkmKotaPage({ Key key }) : super(key: key);

  @override
  _UmkmKotaPageState createState() => _UmkmKotaPageState();
}

class _UmkmKotaPageState extends State<UmkmKotaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UmkmKabItem(),
    );
  }
}