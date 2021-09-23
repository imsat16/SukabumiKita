import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BookDetails extends StatefulWidget {
  final String id_book;
  // final String nama_hotel;
  // final String nama_siswa;
  BookDetails({
    Key key,
    this.id_book,
    // this.nama_hotel,
  }) : super(key: key);
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

const imgDefault =
    "https://upload.wikimedia.org/wikipedia/commons/7/75/No_image_available.png";

class _BookDetailsState extends State<BookDetails> {
  String id_book = "";
  String foto = "";
  String nama = "";
  String deskripsi = "";
  String penulis = "";
  String penerbit = "";
  String tahun_terbit = "";

  Future bookDetail() async {
    final String apiEndpoint =
        // "http://192.168.1.10/WEBSUKABUMIKITA/WEBSUKABUMIKITA/api/api_book_detail.php";
        "http://sukabumikita.my.id/api/api_book_detail.php";

    Uri url = Uri.parse(apiEndpoint);
    final response = await http.post(url, body: {
      "id_book": widget.id_book,
    });

    var data = json.decode(response.body);
    setState(() {
      id_book = data[0]['id_book'].toString();
      foto = data[0]['foto'];
      nama = data[0]['nama'];
      deskripsi = data[0]['deskripsi'];
      penulis = data[0]['penulis'];
      penerbit = data[0]['penerbit'];
      tahun_terbit = data[0]['tahun_terbit'];
    });
  }

  @override
  void initState() {
    // getData();
    bookDetail();
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
                AspectRatio(
                  aspectRatio: 100 / 50,
                  child: '$foto' != ''
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
                              '$penulis',
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
                    "Deskripsi",
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
                "Penerbit : $penerbit",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Tahun Terbit : $tahun_terbit",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      }),
    );
  }
}
