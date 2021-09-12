import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

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
        "http://192.168.43.104/WEBSUKABUMIKITA/Pages/hotel/view_api.php";
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
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: List.generate(
        _dataHotel == null ? 0 : _dataHotel.length,
        (index) => Container(
          padding: const EdgeInsets.all(8),
          child: Text(_dataHotel[index]['nama']),
          color: Colors.teal[100],
        ),
      ),
    );
  }
}
