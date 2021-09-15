import 'package:flutter/material.dart';
import 'package:sukabumikita/VacationPage/VKabupatenItem.dart';

class VKabupatenPage extends StatefulWidget {
  const VKabupatenPage({Key key}) : super(key: key);

  @override
  _VKabupatenPageState createState() => _VKabupatenPageState();
}

class _VKabupatenPageState extends State<VKabupatenPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VKabupatenItem(),
    );
  }
}
