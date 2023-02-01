
import 'package:flutter/material.dart';

class Bankdatacard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 15,
      top: 15,
      left: 15,
      child: SizedBox(
        height: 160,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1674502302867-3c8f75e13cb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60),
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
                              const Text(
                                "NPR.",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.red),
                              ),
                              const Text(
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
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 50),
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
    );
  }
}
