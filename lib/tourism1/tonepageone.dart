import 'package:flutter/material.dart';
import 'package:projectss/tourism1/uicards.dart';
import 'data1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourism1(),
  ));
}

class Tourism1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Text(
            "Places",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Popular",
            style: TextStyle(fontSize: 35),
          ),
          Container(
            width: double.infinity,
            height: 800,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return SizedBox(
                    height: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(imagesss[index]))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, top: 40),
                            child: Text(
                              placesss[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Uidetails(),
                            ),
                          );
                        },
                      ),
                    ));
              },
              itemCount: 7,
            ),
          ),
        ]),
      ),
    );
  }
}
