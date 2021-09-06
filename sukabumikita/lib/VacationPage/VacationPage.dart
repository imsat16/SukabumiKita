import 'package:flutter/material.dart';
import 'package:sukabumikita/VacationPage/VacationItem.dart';

class VacationPage extends StatelessWidget {
  const VacationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            VacationItem(),
          ],
        ),
      ),
    );
  }
}
