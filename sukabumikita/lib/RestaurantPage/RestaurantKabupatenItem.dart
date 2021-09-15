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
        "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_resto_kabupaten.php");
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
                    builder: (context) => DetailResto(
                          id_resto: _dataHotel[index]["id_hotel"].toString(),
                          // nama_hotel: _dataHotel[index]['nama'],
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: _dataHotel[index]['foto'] != ''
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
