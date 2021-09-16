import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sukabumikita/RestaurantPage/DetailResto.dart';

class KabupatenRestoItem extends StatefulWidget {
  const KabupatenRestoItem({Key key}) : super(key: key);

  @override
  State<KabupatenRestoItem> createState() => _KabupatenRestoItemState();
}

class _KabupatenRestoItemState extends State<KabupatenRestoItem> {
  List _dataHotel = List();

  Future getData() async {
    Uri url = Uri.parse(
        // "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_resto_kabupaten.php");
        "http://192.168.1.8/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_resto_kabupaten.php");
    final response = await http.get(url);
    setState(() {
      _dataHotel = json.decode(response.body);
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
      _dataHotel == null ? 0 : _dataHotel.length,
      (index) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailResto(
                        id_resto: _dataHotel[index]["id_resto"].toString(),
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
                                image: _dataHotel[index]['foto'] != ''
                                    ? NetworkImage(_dataHotel[index]['foto'])
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
                            _dataHotel[index]['nama'],
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
                            _dataHotel[index]['rating'],
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
