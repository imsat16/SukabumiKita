import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sukabumikita/Umkm/DetailUmkm.dart';

class UmkmKotaItem extends StatefulWidget {
  const UmkmKotaItem({Key key}) : super(key: key);

  @override
  _UmkmKotaItemState createState() => _UmkmKotaItemState();
}

class _UmkmKotaItemState extends State<UmkmKotaItem> {
  List _data = List();

  Future getData() async {
    Uri url = Uri.parse(
        // "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_umkm_kota.php");
        "http://192.168.43.234/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_umkm_kota.php");
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
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(
        _data == null ? 0 : _data.length,
        (index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailUmkm(
                          id_umkm: _data[index]["id_umkm"].toString(),
                          // nama_hotel: _dataHotel[index]['nama'],
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: _data[index]['foto'] != ''
                        ? NetworkImage(_data[index]['foto'])
                        : NetworkImage(imgDefault),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.only(left: 2, right: 3),
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
                      _data[index]['nama'],
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
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
