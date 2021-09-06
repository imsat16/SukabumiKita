import 'package:flutter/material.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantItem.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            RestaurantItem(),
          ],
        ),
      ),
    );
  }
}
