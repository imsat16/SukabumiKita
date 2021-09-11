import 'package:flutter/material.dart';
// import 'package:sukabumikita/HotelResort/KotaItem.dart';
import 'package:sukabumikita/RestaurantPage/KotaItem.dart';

class KotaVaca extends StatelessWidget {
  const KotaVaca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: KotaRestoItem(),
    );
  }
}
