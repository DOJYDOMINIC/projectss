import 'package:flutter/material.dart';
import 'bankbody.dart';
import 'bottomlist.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(child: BankApp()),
  ));
}

class BankApp extends StatelessWidget {
  const BankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text("Welcome"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 85,
                    color: Colors.red,
                  ),
                  Container(
                    height: 110,
                  ),
                ],
              ),
              Positioned(
                right: 20,
                top: 20,
                left: 30,
                child: Container(
                  height: 160,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(1, 0)),
                      ],
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 47,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1674502302867-3c8f75e13cb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Text(
                                  "Angelina Jolly",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              Wrap(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "NPR.",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.red),
                                      ),
                                      Text(
                                        "1,00,999.35",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.red),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.teal.shade200,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text(
                                  "281685854589641",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, bottom: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Image(
                      width: 20,
                      height: 20,
                      image: NetworkImage(
                          "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                ),
                Text(
                  "WOULD YOU LIKE TO ?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(height: 250, child: BankBody()),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Image(
                    width: 20,
                    height: 20,
                    image: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/arrows-85/24/Arrow-15-512.png")),
                SizedBox(width: 20,),
                Text(
                  "LAST TRANSACTIONS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
              child: Bottomlist())
        ],
      ),
    );
  }
}
