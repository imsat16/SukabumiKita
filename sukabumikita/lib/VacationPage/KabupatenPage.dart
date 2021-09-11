import 'package:flutter/material.dart';
// import 'package:sukabumikita/HotelResort/KabupatenItem.dart';
import 'package:sukabumikita/RestaurantPage/KabupatenItem.dart';
import 'package:sukabumikita/VacationPage/KabupatenItem.dart';

class KabupatenVaca extends StatelessWidget {
  const KabupatenVaca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: KabupatenVacaItem(),
    );
  }
}
