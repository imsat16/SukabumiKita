import 'package:flutter/material.dart';

import 'HomePageItem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "SUKABUMIKITA",
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            HomePageItem(),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
