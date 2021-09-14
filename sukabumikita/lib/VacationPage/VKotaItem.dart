import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class VKotaItem extends StatefulWidget {
  const VKotaItem({Key key}) : super(key: key);

  @override
  _VKotaItemState createState() => _VKotaItemState();
}

class _VKotaItemState extends State<VKotaItem> {
  List _dataHotel = [];

  String kota = "Kota";

  void getData() async {
    final String apiEndpoint =
        // "http://192.168.43.104/WEBSUKABUMIKITA/Pages/hotel/view_api.php";
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
    return Container(
        child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: List.generate(
              _dataHotel == null ? 0 : _dataHotel.length,
              (index) => GestureDetector(
                onTap: (){
              //     Navigator.push(
              // context, MaterialPageRoute(builder: (context) => ChatPage()));
              },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(_dataHotel[index]['nama']),
                  color: Colors.teal[100],
                ),
              ),
            )));
  }
}
