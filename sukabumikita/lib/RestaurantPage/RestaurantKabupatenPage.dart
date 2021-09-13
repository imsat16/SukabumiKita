import 'package:flutter/material.dart';
// import 'package:sukabumikita/HotelResort/KabupatenItem.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantKabupatenItem.dart';

class KabupatenResto extends StatelessWidget {
  const KabupatenResto({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: KabupatenRestoItem(),
    );
  }
}
