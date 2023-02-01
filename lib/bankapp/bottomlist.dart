
import 'package:flutter/material.dart';

class Bottomlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5),
        child: Card(
          child: Container(
            decoration: const BoxDecoration(
            ),
            child: Row(
              children: [
                Container(
                  height: 75,
                  width: 10,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft:Radius.circular(5) )),
                ),
                Column(
                  children: [

                  ],
                )
              ],
            ),
          ),
        ),
      );
    },itemCount: 50,

    );
  }
}
