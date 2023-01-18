
import 'package:flutter/material.dart';
import 'package:projectss/travpage.dart';

import 'dummydata.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Newapp(),
    routes: {
      'SecondpageX2': (context) => const SecondpageX2(),
    },
  ));
}

class Newapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Places"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("POPULAR"),
          ),
              GestureDetector(onTap: (){
                final product = travaldata[1];
                Navigator.pushNamed(context, "SecondpageX2", arguments: product);
                print("print this");
              },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage(""
                            ),),),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                          child: Text("Lonavala",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)),
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
