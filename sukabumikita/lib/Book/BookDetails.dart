import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
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
                  aspectRatio: 100/50,
                  child: Image.network(
                      'https://gdb.voanews.com/FF06D389-F489-4F07-9517-50EB23DE6A5D_cx0_cy1_cw0_w408_r1_s.jpg'),
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
                              'Hotel',
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(
                              'Rating ',
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
                    "adss",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "ads",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Alamat : ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Contact : ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Jam Buka : ",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      }),
    );
  }
}
