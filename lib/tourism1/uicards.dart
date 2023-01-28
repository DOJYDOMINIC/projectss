import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uidetails extends StatelessWidget {
  const Uidetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1490761668535-35497054764d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"))),
          ),
          ListTile(
            title: Padding(
                padding: EdgeInsets.only(bottom: 10, top: 20),
                child: Text(
                  "New York",
                  style: TextStyle(fontSize: 25),
                )),
            subtitle: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text(
                  "New York, officially the State of New York, is a state in the Northeastern United States. It is often called New York State to distinguish it from its largest city, New York City. With a total area of 54,556 square miles (141,300 km2),New York City (NYC) is the most populous city in the United States, and around two-thirds of the state's population lives in the New York metropolitan area, the world's most sprawling urban landmass.[9][10] NYC is home to the headquarters of the United Nations"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 20),
            child: ListTile(
              title: Text("Places to Visit"),
            ),
          ),
          CarouselSlider(
              items: [
                SizedBox(
                  height: 130,
                  width: 370,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1345059895/photo/alley-of-memories.jpg?b=1&s=170667a&w=0&k=20&c=QXXwjyvDdbW-t18d9J8_u_no6GQeclmOE5YGsmu_PiM="),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),SizedBox(
                  height: 130,
                  width: 370,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Card(
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/1345059895/photo/alley-of-memories.jpg?b=1&s=170667a&w=0&k=20&c=QXXwjyvDdbW-t18d9J8_u_no6GQeclmOE5YGsmu_PiM="),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 200,
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
              )),
        ],
      ),
    );
  }
}
