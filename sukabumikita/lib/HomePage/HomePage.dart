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
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Image.asset(
            'images/logo.png',
            width: 100,
          )),
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
