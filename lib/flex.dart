import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: flexes(),
  ));
}
class flexes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,//requared
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellow,
              // height: 50,
              // width: 50,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              // height: 50,
              // width: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              // height: 50,
              // width: 50,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.brown,
              // height: 50,
              // width: 50,
            ),
          ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     color: Colors.blue,
          //     // height: 50,
          //     // width: 50,
          //   ),
          // ),
        ],
      )
    );
  }

}