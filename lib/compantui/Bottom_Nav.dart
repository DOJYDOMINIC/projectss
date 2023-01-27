
import 'package:flutter/material.dart';
import 'package:projectss/compantui/profilee.dart';

import 'Upload.dart';
void main(){
  runApp(MaterialApp(home: Upload_Page(),debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.brown),));
}
class Upload_Page extends StatefulWidget{

  @override
  State<Upload_Page> createState() => _Upload_PageState();
}

class _Upload_PageState extends State<Upload_Page> {
  int selectindex=2;

  List body= <Widget>[
     Text("Home"),
     Text("Grid"),
    Upload(),
    Pro_File(),
  ];
  void onitemtapped(int index){
    setState(() {
      selectindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title:Text("BottomBar"),
      // ),
      bottomNavigationBar: Container(
        child:ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black26,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded),
                label: "Activities",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard),
                label: "Reward Wallet",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Profile",
              ),
            ],
            currentIndex: selectindex,
            onTap: onitemtapped,
          ),
        ),
      ),
      body: Center(
        child: body.elementAt(selectindex),
        // child: Card(
        //   child: Padding(
        //     padding: const EdgeInsets.all(50.0),
        //     child: Text("Welcome"),
        //   ),),),
      ),);
  }
}