import 'package:flutter/material.dart';
import 'Page2.dart';
void main(){
  runApp(MaterialApp(home: Invoice(),
      debugShowCheckedModeBanner: false
  ));
}

class Invoice extends StatefulWidget{
  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
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
            SizedBox(height:20),
            Container(height:50,width:50,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_left),),),
            SizedBox(height:15,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(top:3,left:8),
              child: Text("Enter the invoice number",style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),),
            ),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(filled: true,
                fillColor: Colors.white,
                hintText: "Eg10254035",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
            ),),
            Image(image: AssetImage('assets/images/123444-removebg-preview.png')),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width:30,),
                SizedBox(height: 50,width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.chevron_left,color: Colors.indigo,),
                      Text("Back",style: TextStyle(color: Colors.indigo),),
                    ],
                  )),
                ),
                SizedBox(width:35,),

                SizedBox(height: 50,width: 150,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  Date1()));
                  }, child: Row(
                    children: [
                      Icon(Icons.chevron_right),
                      Text("Next"),
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