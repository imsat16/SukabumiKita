import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sukabumikita/Umkm/DetailUmkm.dart';

class UmkmKabItem extends StatefulWidget {
  const UmkmKabItem({Key key}) : super(key: key);

  @override
  _UmkmKabItemState createState() => _UmkmKabItemState();
}

class _UmkmKabItemState extends State<UmkmKabItem> {
  List _data = List();

  Future getData() async {
    Uri url = Uri.parse(
        "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_umkm_kota.php");
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
                image: DecorationImage(
                    image: _data[index]['foto'] != ''
                        ? NetworkImage(_data[index]['foto'])
                        : NetworkImage(imgDefault),
                    fit: BoxFit.fill)),
            padding: const EdgeInsets.all(8),
            child: Text(_data[index]['nama']),
            // color: Colors.teal[100],
          ),
        ),
      ),
    );
  }
}
