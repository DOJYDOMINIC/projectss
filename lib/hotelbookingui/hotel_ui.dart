import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel_app(),
  ));
}

class Hotel_app extends StatefulWidget {

  @override
  State<Hotel_app> createState() => _Hotel_appState();
}

class _Hotel_appState extends State<Hotel_app> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SliverAppBar(

      ),

    );
  }
}
