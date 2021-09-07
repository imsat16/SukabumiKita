import 'package:flutter/material.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantItem.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Nama Aplikasi',
          style: TextStyle(color: Colors.black54),
        )),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, bottom: 60),
        child: ListView(
          // children: [
          //   RestaurantItem(),
          // ],
          children: List.generate(
            50,
            (index) => RestaurantItem(),
          ),
        ),
      ),
    );
  }
}
