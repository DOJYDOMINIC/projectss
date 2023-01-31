
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../hotelbookingui/hoteldata.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Hotelapp(),
  ));
}

class Hotelapp extends StatefulWidget {
  const Hotelapp({Key? key}) : super(key: key);

  @override
  State<Hotelapp> createState() => _HotelappState();
}

class _HotelappState extends State<Hotelapp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ListTile(
                title: Text("Hello@abu"),
                subtitle: Text("Find your favourate hotel"),
                trailing: Container(
                  width: 75,
                  height: 100,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"))
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade600,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(-5, 0),
                        )
                      ],
                      border: Border.all(color: Colors.grey.shade300),
                      // boxShadow: [BoxShadow(blurRadius: 15, offset: Offset(5, 5))],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search for hotel",
                          border: InputBorder.none),
                      cursorColor: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 20),
                  child: Text("Popular Hotels",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 25
                  ),),
                )),
            SliverToBoxAdapter(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 250,
                  viewportFraction: .6,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: hotelstile.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 5),
                            ),
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: const Offset(-5,0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(hotelstile[index]))),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 90, top: 10),
                              child: Wrap(
                                children: [
                                  Text(
                                    title1[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    title2[index],
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20, left: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    rate[index],
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        ratingg[index],
                                        style: const TextStyle(color: Colors.blue),
                                      ),
                                      Icon(
                                        starrat[index],
                                        size: 18,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hotel Packages",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("View more")
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(

                );
              },itemCount: hotelstile.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Explore',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[500],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
