import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
    ),
    debugShowCheckedModeBanner: false,
    home: Musify(),
  ));
}

class Musify extends StatefulWidget {
  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  int selectedIndex = 0;
  List playlist = [
    "https://i.scdn.co/image/ab67616d0000b273735f6d3a0be128ec709a016e",
    "https://i.scdn.co/image/ab67616d0000b273c85e9cfe721fb577d79a2b54",
    "https://i.scdn.co/image/ab67616d0000b273d2cc958e7bfa7f61b255c66e",
    "https://rofiles.azureedge.net/urls/grande/madera-cuadrada-spotify-g.jpg",
    "https://i.scdn.co/image/ab67616d0000b2739986d69836eac008a927b032",
    "https://i.scdn.co/image/ab67616d0000b273e125bce803627d192c8f6697",
    "https://i.scdn.co/image/ab67616d0000b273c37f0437b5edc4e5eb77659d",
  ];
  List names = [
    "Dilvale",
    "RaOne",
    "Krish",
    "Dhoom",
    "War",
    "Sanam Theri",
    "KI And Ka"
  ];

  List subtitles = [
    "Dhilbhar song",
    "RaOne song",
    "Krish song",
    "Dhoom song",
    "War song",
    "Sanam Theri song",
    "KI And Ka song"
  ];

  List suggest = [
    "https://www.lyricsgoal.com/wp-content/uploads/2021/08/qismat-2-title-track-b-praak.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyfCukq2cpaGM0ovdBdMiLK2Ykl-0FaH1r0zr3YAML6kt7LcKIq3GYbVtMRZ7O9n_I8Qs&usqp=CAU",
    "https://i.ytimg.com/vi/Z-hMsgYR-Mw/maxresdefault.jpg",
    "http://www.lyricsvyrics.com/wp-content/uploads/2021/02/Vrath-Lyrics-Gursewak-likhari.jpg",
    "https://www.godisageek.com/wp-content/uploads/Ghost-Song-Key-Art-1920x1080-1-1024x576.jpg",
    "https://i.ytimg.com/vi/jZyAB2KFDls/maxresdefault.jpg",
    "https://www.hinditracks.in/wp-content/uploads/2020/01/malang-lyrics.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Musify.",
          style: TextStyle(
              color: Colors.pink.shade200,
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    "Suggested Playlist",
                    style: TextStyle(
                        color: Colors.pink.shade200,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 2,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.7,
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
                ),
                itemCount: playlist.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(suggest[index]))));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  Text(
                    "Recomended for You",
                    style: TextStyle(color: Colors.pink.shade200, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ListTile(
                        leading:Container(
                          height: 50,
                            width:50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: NetworkImage(playlist[index]))
                            ),
                        ),
                        title: Text(names[index],style: TextStyle(color:  Colors.pink.shade200, ),),
                        subtitle: Text(subtitles[index],style: TextStyle(color: Colors.grey.shade700),),
                        trailing: Wrap(
                          children: [
                            Icon(Icons.star_border_outlined,color: Colors.pink.shade200,),
                            SizedBox(width: 10,),
                            Icon(Icons.download,color: Colors.pink.shade200,),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: playlist.length,
                )),
          ],
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Color.fromARGB(255, 5, 5, 5),
        selectedIndex: selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            title: Text('Home',style: TextStyle(color:  Colors.pink.shade200, ),),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search,color: Colors.white,),
            title: Text('Search',style: TextStyle(color:  Colors.pink.shade200, ),),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.play_arrow,color: Colors.white,),
            title: Text('Playlist',style: TextStyle(color:  Colors.pink.shade200, ),),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.more_horiz,color: Colors.white,),
            title: Text('More',style: TextStyle(color:  Colors.pink.shade200, ),),
          ),
        ],
      ),
    );
  }
}
