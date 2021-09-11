import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:sukabumikita/models/hotel.dart';

class KotaItem extends StatefulWidget {
  const KotaItem({Key? key}) : super(key: key);

  @override
  State<KotaItem> createState() => _KotaItemState();
}

class _KotaItemState extends State<KotaItem> {
  List _dataHotel = [];

  String kota = "Kota";

  void getData() async {
    final String apiEndpoint =
        "http://192.168.1.5/WEBSUKABUMIKITA/WEBSUKABUMIKITA/Pages/hotel/view_api.php";
    final Uri url = Uri.parse(apiEndpoint);
    var response = await http.post(url, body: {
      "posisi": kota,
    });
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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _dataHotel == null ? 0 : _dataHotel.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Text(_dataHotel[index]['nama']),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.teal[100],
              ),
            ),
          ],
        ));
      },
    );
  }
}
