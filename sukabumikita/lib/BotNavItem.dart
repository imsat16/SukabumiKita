import 'package:flutter/material.dart';
import 'package:sukabumikita/GuideTourPage/GuideTourPage.dart';
import 'package:sukabumikita/HomePage/HomePage.dart';
import 'package:sukabumikita/HotelResort/HotelResortPage.dart';
import 'package:sukabumikita/RestaurantPage/RestaurantPage.dart';
import 'package:sukabumikita/VacationPage/VacationPage.dart';

class BotNavItem extends StatefulWidget {
  const BotNavItem({Key key}) : super(key: key);
  static const List<Widget> _widgetOptions = <Widget>[
    HotelResortPage(),
    VacationPage(),
    HomePage(),
    GuideTourPage(),
    RestaurantPage()
  ];

  @override
  _BotNavItemState createState() => _BotNavItemState();
}

class _BotNavItemState extends State<BotNavItem> {
  int _currentIndex = 2;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BotNavItem._widgetOptions.elementAt(_currentIndex),
      Align(
        alignment: Alignment(0.0, 1.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            // backgroundColor: Colors.blueGrey,
            showSelectedLabels: true,
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.hotel),
                label: 'Hotel & Resort',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.near_me),
                label: 'Vacation',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.map_outlined,
                ),
                label: 'Guide Tour',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.restaurant_menu,
                ),
                label: 'Restaurant',
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
