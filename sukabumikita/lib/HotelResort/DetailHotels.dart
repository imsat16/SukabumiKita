import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sukabumikita/models/hotel.dart';

class DetailHotels extends StatefulWidget {
  // const DetailHotels({Key key}) : super(key: key);

  final String id_hotel;
  // final String nama_hotel;
  // final String nama_siswa;
  DetailHotels({
    Key key,
    this.id_hotel,
    // this.nama_hotel,
  }) : super(key: key);

  @override
  _DetailHotelsState createState() => _DetailHotelsState();
}

class _DetailHotelsState extends State<DetailHotels> {
  String id_hotel = "";
  String foto = "";
  String nama = "";
  String deskripsi = "";
  String alamat = "";
  String rating = "";

  void hotelDetail() async {
    final String apiEndpoint =
        "http://192.168.1.15/WEBSUKABUMIKITA/WEBSUKABUMIKITA/Pages/hotel/view_api_by_kota.php";
    Uri url = Uri.parse(apiEndpoint);
    final response = await http.post(url, body: {
      "id_hotel": widget.id_hotel,
    });

    var data = json.decode(response.body);
    setState(() {
      id_hotel = data[0]['id_hotel'].toString();
      foto = data[0]['foto'];
      nama = data[0]['nama'];
      deskripsi = data[0]['deskripsi'];
      alamat = data[0]['alamat'];
      rating = data[0]['rating'];
    });
  }

  @override
  void initState() {
    // getData();
    hotelDetail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$nama'),
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2,
              ),
              Image.network("$foto"),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(color: Colors.teal),
                      child: Text("$nama")),
                  SizedBox(
                    width: 10,
                  ),
                  Text("$rating"),
                ],
              ),
              Text("$deskripsi"),
              Text("Alamat: $alamat")
            ],
          ),
        );
      }),
    );
  }
}
