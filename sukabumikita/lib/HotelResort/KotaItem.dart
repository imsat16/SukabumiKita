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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _dataHotel == null ? 0 : _dataHotel.length,
      itemBuilder: (context, i) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.transparent, shadowColor: Colors.transparent),
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => ChatPage()));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(//kebawah
              children: [
                Row(//kesamping
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Center(
                              child: Text(
                            _dataHotel[i]['foto'],
                          )),
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.green,
                            // image: DecorationImage(
                            //     image: AssetImage('assets/images/azizi.jpeg')),
                          ),
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
                              _dataHotel[i]['nama'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black54),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              _dataHotel[i]['rating'],
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
        );
        // Container(
        //   child: Container(
        //     height: 100,
        //     padding: const EdgeInsets.all(8),
        //     child: Text(_dataHotel[i]['foto']),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.all(Radius.circular(10)),
        //       color: Colors.teal[100],
        //     ),
        //   ),
        // );
      },
    );
  }
}
