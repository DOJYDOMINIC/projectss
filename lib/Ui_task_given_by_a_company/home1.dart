import 'package:flutter/material.dart';

import 'firstpage1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Companyui(),
  ));
}

class Companyui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage("assets/images/image123.jpg"))),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                    Icons.arrow_back_ios_new_sharp),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Enter the invoice number",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.indigo.shade600),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,),
              child: Container(
                height: 50,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                    leading :Text("Eg:658774557784",style: TextStyle(color: Colors.grey.shade400,fontSize: 20),)),
              ),
            ),
            Image(image: AssetImage("assets/images/123444-removebg-preview.png")),
SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:180,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.indigo,),
                      Text("Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.indigo),)
                    ],
                  ),
                ),
                Container(
                  width:180,
                  height: 60,
                  decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.indigo,Colors.indigo.shade400]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Firstpage1(),));
                      }, child: Text("Next",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
