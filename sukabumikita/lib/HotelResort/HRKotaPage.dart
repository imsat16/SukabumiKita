import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/HRKotaItem.dart';

class KotaPage extends StatefulWidget {
  const KotaPage({Key? key}) : super(key: key);

  @override
  State<KotaPage> createState() => _KotaPageState();
}

class _KotaPageState extends State<KotaPage> {


  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: KotaItem(),

        );
  }
}
