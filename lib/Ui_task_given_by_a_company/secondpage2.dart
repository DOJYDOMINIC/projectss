import 'package:flutter/material.dart';

import 'firstpage1.dart';


class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Firstpage1(),));
          }, icon: Icon(Icons.arrow_back_ios,color: Colors.indigo,)),
        ),
        title: Text(
          "Rewards Walleet",
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.indigo, Colors.indigo.shade300]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "14,325",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                              width: 35,
                              height: 35,
                              child: Image(
                                  image: NetworkImage(
                                      "https://cdn2.iconfinder.com/data/icons/startups-6/512/finance___coin_cash_dollar_money_banking_bank_investment_profit_salary.png")))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(
                        image: NetworkImage(
                            "https://cdn3.iconfinder.com/data/icons/payment-102/512/Gift.png"))),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
