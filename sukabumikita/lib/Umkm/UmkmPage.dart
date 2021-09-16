import 'package:flutter/material.dart';
import 'package:sukabumikita/Umkm/UmkmKabPage.dart';
import 'package:sukabumikita/Umkm/UmkmKotaItem.dart';
import 'package:sukabumikita/Umkm/UmkmKotaPage.dart';
import 'package:sukabumikita/VacationPage/VKotaPage.dart';

class UmkmPage extends StatefulWidget {
  const UmkmPage({Key key}) : super(key: key);

  @override
  _UmkmPageState createState() => _UmkmPageState();
}

class _UmkmPageState extends State<UmkmPage> {
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
            UmkmKotaPage(),
            UmkmKabPage(),
          ],
        ),
      ),
    );
  }
}
