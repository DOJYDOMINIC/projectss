import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 400,
                    color: Colors.green,
                    child: Text("run"),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      width: 400,
                      color: Colors.red,
                      child: Text("run"),
                    ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 50,
                    width: 400,
                    color: Colors.yellow,
                    child: Text("run"),
                  ),
                ),


              ],

            ),
          ),
        ),
      ),

    );
  }
}
