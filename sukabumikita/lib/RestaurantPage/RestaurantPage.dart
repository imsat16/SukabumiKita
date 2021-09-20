import 'package:flutter/material.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantKabupatenPage.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantKotaPage.dart';
// import 'package:sukabumikita/RestaurantPage/RestaurantItem.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          centerTitle: true,
          leading: IconButton(
            // 1
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).maybePop();
            },
          ),
          title: Text(
            "RESTAURANT",
            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),
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
            KotaResto(),
            KabupatenResto(),
          ],
        ),
      ),
    );
  }
}
