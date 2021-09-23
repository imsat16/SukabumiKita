import 'package:flutter/material.dart';
import 'package:sukabumikita/VacationPage/VKabupatenPage.dart';
import 'package:sukabumikita/VacationPage/VKotaPage.dart';

class VacationPage extends StatefulWidget {
  const VacationPage({Key key}) : super(key: key);

  @override
  _VacationPageState createState() => _VacationPageState();
}

class _VacationPageState extends State<VacationPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Image.asset(
              'images/logo.png',
              width: 100,
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
            VKotaPage(),
            VKabupatenPage(),
          ],
        ),
      ),
    );
  }
}
