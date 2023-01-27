import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectss/compantui/page1.dart';

import 'Bottom_Nav.dart';

void main(){
  runApp(MaterialApp(home: Date1(),
    debugShowCheckedModeBanner: false,));
}

class Date1 extends StatefulWidget{
  @override
  State<Date1> createState() => _Date1State();
}

class _Date1State extends State<Date1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black12,
      body: Container( decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff4fc3f7),
                Colors.white,
                Color(0xfff48fb1),

              ])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:10),
            Container(height:50,width:50,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left),),),
            SizedBox(height:10,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(top:3,left:8),
              child: Text("Select invoice date",style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(filled: true,
                fillColor: Colors.white,
                // hintText: "Eg10254035",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),),
            SizedBox(height:10,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(top:3,left:8),
              child: Text("Enter the amount",style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: 10,),
            TextField(decoration: InputDecoration(filled: true,
                fillColor: Colors.white,
                hintText: "Eg. 25000",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),),
            Center(child: Image(image: AssetImage('assets/images/123444-removebg-preview.png'),height: 300,)),

            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width:30,),
                SizedBox(height: 50,width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>  Invoice()));
                      }, child: Row(
                    children: [
                      Icon(Icons.chevron_left,color: Colors.indigo,),
                      Text("Back",style: TextStyle(color: Colors.indigo),),
                    ],
                  )),
                ),
                SizedBox(width:35,),

                SizedBox(height: 50,width: 150,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  Upload_Page()));
                  }, child: Row(
                    children: [
                      SizedBox(width: 15,),
                      Text("Submit"),
                      SizedBox(width: 5,),
                      Icon(Icons.check_circle_outline),
                    ],
                  )),
                )
              ],)

          ],

        ),
      ),
    );
  }
}