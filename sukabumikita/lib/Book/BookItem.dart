import 'package:flutter/material.dart';
import 'package:sukabumikita/Book/BookDetails.dart';

class BookItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(
      50,
      (index) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BookDetails()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.grey,
                            // image: DecorationImage(
                            //     image: _data[index]['foto'] != ''
                            //         ? NetworkImage(_data[index]['foto'])
                            //         : NetworkImage(imgDefault),
                            //     fit: BoxFit.fill),
                                ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'qwqew',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            'adsads',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}