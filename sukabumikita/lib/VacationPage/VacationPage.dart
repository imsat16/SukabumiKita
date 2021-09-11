import 'package:flutter/material.dart';
import 'package:sukabumikita/VacationPage/KabupatenPage.dart';
import 'package:sukabumikita/VacationPage/KotaPage.dart';
// import 'package:sukabumikita/VacationPage/VacationItem.dart';

class VacationPage extends StatelessWidget {
  const VacationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Nama Aplikasi",
              style: TextStyle(color: Colors.black54),
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
            KotaVaca(),
            KabupatenVaca(),
          ],
        ),
      ),
    );
  }
}
