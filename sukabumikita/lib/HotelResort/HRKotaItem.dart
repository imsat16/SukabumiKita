import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/DetailHotels.dart';

class KotaItem extends StatefulWidget {
  const KotaItem({Key key}) : super(key: key);

  @override
  State<KotaItem> createState() => _KotaItemState();
}

const imgDefault =
    "https://upload.wikimedia.org/wikipedia/commons/7/75/No_image_available.png";

class _KotaItemState extends State<KotaItem> {
  List _dataHotel = List();

  void getData() async {
    final String apiEndpoint =
        "http://192.168.1.15/WEBSUKABUMIKITA/WEBSUKABUMIKITA/Pages/hotel/view_api_by_kota.php";
    final Uri url = Uri.parse(apiEndpoint);
    var response = await http.post(url);
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
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(
        _dataHotel == null ? 0 : _dataHotel.length,
        (index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailHotels(
                          id_hotel: _dataHotel[index]["id_hotel"].toString(),
                          // nama_hotel: _dataHotel[index]['nama'],
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: _dataHotel[index]['foto'] != ""
                        ? NetworkImage(_dataHotel[index]['foto'])
                        : NetworkImage(imgDefault),
                    fit: BoxFit.fill)),
            padding: const EdgeInsets.all(8),
            child: Text(_dataHotel[index]['nama']),
            // color: Colors.teal[100],
          ),
        ),
      ),
    );
  }
}
