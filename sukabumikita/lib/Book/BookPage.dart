import 'package:flutter/material.dart';
import 'package:sukabumikita/Book/BookItem.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "BOOK",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
      ),
      body: BookItem(),
    );
  }
}
