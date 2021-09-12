import 'package:flutter/material.dart';
// import 'package:sukabumikita/HotelResort/KotaItem.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantKotaItem.dart';

class KotaResto extends StatelessWidget {
  const KotaResto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: KotaRestoItem(),
    );
  }
}
