import 'package:flutter/material.dart';
import 'package:sukabumikita/VacationPage/VKotaItem.dart';

class VKotaPage extends StatefulWidget {
  const VKotaPage({ Key key }) : super(key: key);

  @override
  _VKotaPageState createState() => _VKotaPageState();
}

class _VKotaPageState extends State<VKotaPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: VKotaItem(),
      ),
    );
  }
}