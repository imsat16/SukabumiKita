import 'package:flutter/material.dart';

class VacationItem extends StatelessWidget {
  const VacationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: [
          Text(
            "Vacation",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.yellow[600],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 370,
              height: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.yellow[600],
                // image: DecorationImage(
                //     image: AssetImage('assets/images/azizi.jpeg')),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
