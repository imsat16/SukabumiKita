import 'package:flutter/material.dart';
import 'package:sukabumikita/HotelResort/KabupatenPage.dart';
import 'package:sukabumikita/HotelResort/KotaPage.dart';

class HotelResortPage extends StatelessWidget {
  const HotelResortPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Nama Aplikasi"),
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 4,
            tabs: [
              Tab(
                child: Text(
                  "KOTA",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  "KABUPATEN",
                  style: TextStyle(fontSize: 16),
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
