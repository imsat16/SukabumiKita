import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'DetailHotels.dart';

class KabupatenItem extends StatefulWidget {
  const KabupatenItem({Key key}) : super(key: key);

  @override
  State<KabupatenItem> createState() => _KabupatenItemState();
}

const imgDefault =
    "https://upload.wikimedia.org/wikipedia/commons/7/75/No_image_available.png";

class _KabupatenItemState extends State<KabupatenItem> {
  List _dataHotel = List();

  Future getData() async {
    Uri url = Uri.parse(
        // "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_hotel_kabupaten.php",
        "http://sukabumikita.my.id/api/api_hotel_kabupaten.php");
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
                    builder: (context) => DetailHotels(
                          id_hotel: _dataHotel[index]["id_hotel"].toString(),
                          // nama_hotel: _dataHotel[index]['nama'],
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: _dataHotel[index]['foto'] != ''
                      ? NetworkImage(_dataHotel[index]['foto'])
                      : NetworkImage(imgDefault),
                  fit: BoxFit.fill),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Colors.white,
                            Colors.white.withOpacity(0.5)
                          ], // red to yellow
                          stops: [
                            0.0,
                            0.6
                          ] // repeats the gradient over the canvas
                          ),
                    ),
                    child: Text(
                      _dataHotel[index]['nama'],
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            // color: Colors.teal[100],
          ),
        ),
      ),
    );
  }
}
