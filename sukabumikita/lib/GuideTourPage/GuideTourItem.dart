import 'package:flutter/material.dart';

class GuideTourItem extends StatelessWidget {
  const GuideTourItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: [
          Text(
            "Guide Tour",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 370,
              height: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue,
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
