import 'package:flutter/material.dart';
import 'package:projectss/hotelui2/placedetaild.dart';
import 'data.dart';
import 'detailing.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => placedetail()));
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Go",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              "Fast",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1668787978300-d40de0708626?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 360,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(isCollapsed:true,
                    hintText: "Search Place",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15),
                    suffix: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Palces",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 20, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Detailss(),));
                  },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              (images[index]),
                            )),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Stack(
                          children: [
                            Container(
                              width: 45,
                              height: 15,
                              color: Colors.blue,
                              child: Center(
                                child: Text(
                                  price[index],
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 120,
                              child: Text(places[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
        child: Container(
          height: 60,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.blue.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
                "Explore Now",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )),
        ),
      ),
    );
  }
}