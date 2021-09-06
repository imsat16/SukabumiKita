import 'package:flutter/material.dart';

class HomePageItem extends StatelessWidget {
  const HomePageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              "Peta Sukabumi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 370,
                height: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.green,
                  // image: DecorationImage(
                  //     image: AssetImage('assets/images/azizi.jpeg')),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Jalur Transportasi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 370,
                height: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.green,
                  // image: DecorationImage(
                  //     image: AssetImage('assets/images/azizi.jpeg')),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
