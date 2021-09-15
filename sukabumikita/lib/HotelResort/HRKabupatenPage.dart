import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/HRKabupatenItem.dart';

class KabupatenPage extends StatelessWidget {
  const KabupatenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: KabupatenItem(),
      ),
    );
  }
}
