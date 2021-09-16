import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/DetailHotels.dart';
import 'package:sukabumikita/RestaurantPage/DetailResto.dart';

class KotaRestoItem extends StatefulWidget {
  const KotaRestoItem({Key key}) : super(key: key);

  @override
  State<KotaRestoItem> createState() => _KotaRestoItemState();
}

const imgDefault =
    "https://upload.wikimedia.org/wikipedia/commons/7/75/No_image_available.png";

class _KotaRestoItemState extends State<KotaRestoItem> {
  List _data = List();

  Future getData() async {
    Uri url = Uri.parse(
        // "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_resto_kota.php");
        "http://192.168.1.8/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_resto_kota.php");
    final response = await http.get(url);
    setState(() {
      _data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(
      _data == null ? 0 : _data.length,
      (index) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailResto(
                        id_resto: _data[index]["id_resto"].toString(),
                        // nama_hotel: _dataHotel[index]['nama'],
                      )));
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
                            image: DecorationImage(
                                image: _data[index]['foto'] != ''
                                    ? NetworkImage(_data[index]['foto'])
                                    : NetworkImage(imgDefault),
                                fit: BoxFit.fill)),
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
                            _data[index]['nama'],
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
                            _data[index]['rating'],
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
    // GridView.count(
    //   primary: false,
    //   padding: const EdgeInsets.all(20),
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //   crossAxisCount: 2,
    //   children: List.generate(
    //     _data == null ? 0 : _data.length,
    //     (index) => GestureDetector(
    //       onTap: () {
    //         Navigator.push(
    //             context,
    //             MaterialPageRoute(
    //                 builder: (context) => DetailResto(
    //                       id_resto: _data[index]["id_resto"].toString(),
    //                       // nama_hotel: _dataHotel[index]['nama'],
    //                     )));
    //       },
    //       child: Container(
    //         decoration: BoxDecoration(
    //             image: DecorationImage(
    //                 image: _data[index]['foto'] != ''
    //                     ? NetworkImage(_data[index]['foto'])
    //                     : NetworkImage(imgDefault),
    //                 fit: BoxFit.fill)),
    //         padding: const EdgeInsets.all(8),
    //         child: Text(_data[index]['nama']),
    //         // color: Colors.teal[100],
    //       ),
    //     ),
    //   ),
    // );
  }
}
