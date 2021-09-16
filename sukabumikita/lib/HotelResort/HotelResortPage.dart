import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/HRKabupatenPage.dart';
import 'package:sukabumikita/HotelResort/HRKotaPage.dart';

class HotelResortPage extends StatelessWidget {
  const HotelResortPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Sukabumi Kita",
              style: TextStyle(color: Colors.green),
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Colors.green,
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  "KOTA",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "KABUPATEN",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            KotaPage(),
            KabupatenPage(),
          ],
        ),
      ),
    );
  }
}
