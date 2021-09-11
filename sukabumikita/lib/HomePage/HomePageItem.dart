import 'package:flutter/material.dart';
import 'package:sukabumikita/HomePage/ImageViewJaport.dart';
import 'package:sukabumikita/HomePage/ImageViewPeta.dart';

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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Peta()));
                },
                child: Container(
                  width: 370,
                  height: 370,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[350],
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/peta.jpeg')),
                  ),
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
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Japort()));
                },
                child: Container(
                  width: 370,
                  height: 370,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[350],
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/japort.jpeg')),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
