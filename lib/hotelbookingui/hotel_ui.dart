import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projectss/hotelui2/placedetaild.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel_Ui(),
  ));
}
class Hotel_Ui extends StatefulWidget {
List hotelimg = [
  "https://images.unsplash.com/photo-1594376425830-449d2b7572d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1573532271406-b13cb961e22e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1556905200-bd982f883637?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  "https://images.unsplash.com/photo-1570038788002-c827b5d9ac55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=403&q=80",
  "https://images.unsplash.com/photo-1526925528837-813a7961f5c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  "https://images.unsplash.com/photo-1549877452-9c387954fbc2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  "https://images.unsplash.com/photo-1570143675316-51a19f90a943?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1888&q=80",

];

List placename = [
  "New York",
  "Paris",
  "Tokyo",
  "Sydney",
  "Rome",
  "Barcelona",
  "San Francisco",
  "Hong Kong",
  "Dubai",
  "Istanbul",
  "Amsterdam",
  "Las Vegas"
];
  @override
  State<Hotel_Ui> createState() => _Hotel_UiState();
}

class _Hotel_UiState extends State<Hotel_Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Wrap(
                children: [
                  Text("Hello@Dojy",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  Text("Find your favorite hotel",style: TextStyle(fontSize: 15,color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 10),
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  image:DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://cdn.pixabay.com/photo/2014/08/12/00/01/santorini-416136_960_720.jpg"))),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
      Padding(
      padding: const EdgeInsets.only(top:30,left: 20, right: 20),
      child: Card(
        child: TextField(

          cursorColor: Colors.black,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            prefix: Icon(Icons.search,color: Colors.grey,),
            hintText: "Search...",
          ),
        ),
      ),
    ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 25),
            child: Row(
              children: [
                Text("Popular Hotels",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
          ),
          SizedBox(height: 20,),
          CarouselSlider.builder(
              items: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(flex:3,child: Container(
                            decoration: BoxDecoration(image: DecorationImage(
                              fit: BoxFit.cover,
                                image: NetworkImage())),
                          )),
                          Expanded(flex:2,child: Container(
                            child: ,
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ],

              ), itemCount: 7, itemBuilder: (BuildContext context, int index, int realIndex) {
    options: CarouselOptions(
    height: 300,
    aspectRatio: 16 / 9,
    viewportFraction: 0.8,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    scrollDirection: Axis.horizontal,
          },),
        ],
      ),
    );
  }
}
