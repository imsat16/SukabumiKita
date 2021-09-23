import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// import 'package:sukabumikita/models/hotel.dart';

class DetailUmkm extends StatefulWidget {
  // const DetailHotels({Key key}) : super(key: key);

  final String id_umkm;
  // final String nama_hotel;
  // final String nama_siswa;
  DetailUmkm({
    Key key,
    this.id_umkm,
    // this.nama_hotel,
  }) : super(key: key);

  @override
  _DetailUmkmState createState() => _DetailUmkmState();
}

const imgDefault =
    "https://upload.wikimedia.org/wikipedia/commons/7/75/No_image_available.png";

class _DetailUmkmState extends State<DetailUmkm> {
  String id_umkm = "";
  String foto = "";
  String nama = "";
  String deskripsi = "";
  String alamat = "";
  String no_telp = "";
  String jam_buka = "";
  String jam_tutup = "";
  String rating = "";

  Future hotelDetail() async {
    final String apiEndpoint =
        // "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_umkm_detail.php";
        "http://sukabumikita.my.id/api/api_umkm_detail.php";
    Uri url = Uri.parse(apiEndpoint);
    final response = await http.post(url, body: {
      "id_umkm": widget.id_umkm,
    });

    var data = json.decode(response.body);
    setState(() {
      id_umkm = data[0]['id_umkm'].toString();
      foto = data[0]['foto'];
      nama = data[0]['nama'];
      deskripsi = data[0]['deskripsi'];
      alamat = data[0]['alamat'];
      no_telp = data[0]['no_telp'];
      jam_buka = data[0]['jam_buka'];
      jam_tutup = data[0]['jam_tutup'];
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
      // appBar: AppBar(
      //   title: Text('$nama'),
      // ),
      // extendBodyBehindAppBar: true,
      body: Builder(builder: (context) {
        return ListView(
          children: [
            Stack(
              children: [
                '$foto' != ''
                    ? Image.network(
                        '$foto',
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        imgDefault,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200.withOpacity(0.5)),
                    child: TextButton(
                      child: Icon(Icons.arrow_back, color: Colors.black54),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Column(
                    children: [
                      Container(
                        // width: 300,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Colors.black54,
                                Colors.black45.withOpacity(0.0),
                              ], // red to yellow
                              stops: [
                                0.0,
                                0.6
                              ] // repeats the gradient over the canvas
                              ),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$nama',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'Rating $rating',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deskripsi :",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "$deskripsi",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Alamat : $alamat",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Contact : -$no_telp",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Jam Buka : $jam_buka - $jam_tutup",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      }),
    );
  }
}
