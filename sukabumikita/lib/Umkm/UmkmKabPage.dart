import 'package:flutter/material.dart';
import 'package:sukabumikita/Umkm/UmkmKabItem.dart';
import 'package:sukabumikita/VacationPage/VKabupatenItem.dart';

class UmkmKabPage extends StatefulWidget {
  const UmkmKabPage({Key key}) : super(key: key);

  @override
  _UmkmKabPageState createState() => _UmkmKabPageState();
}

class _UmkmKabPageState extends State<UmkmKabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UmkmKabItem(),
    );
  }
}
