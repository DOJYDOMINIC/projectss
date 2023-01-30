import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:projectss/tourism1/data1.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musify(),
  ));
}

class Musify extends StatefulWidget {
  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  int selectedIndex=2;
  List playlist = [
    "https://i.scdn.co/image/ab67616d0000b273735f6d3a0be128ec709a016e",
    "https://i.scdn.co/image/ab67616d0000b273c85e9cfe721fb577d79a2b54",
    "https://i.scdn.co/image/ab67616d0000b273d2cc958e7bfa7f61b255c66e",
    "https://rofiles.azureedge.net/urls/grande/madera-cuadrada-spotify-g.jpg",
    "https://i.scdn.co/image/ab67616d0000b2739986d69836eac008a927b032",
    "https://i.scdn.co/image/ab67616d0000b273e125bce803627d192c8f6697",
    "https://i.scdn.co/image/ab67616d0000b273c37f0437b5edc4e5eb77659d",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: Text(
                "Playlists",
                style: TextStyle(
                    color: Colors.pink.shade200,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      suffixIcon: Icon(Icons.search,color: Colors.black,),
                      border: InputBorder.none
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(playlist[index]))),
                    ),
                  );
                },
                itemCount: imagesss.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: FlashyTabBar(
         backgroundColor: Colors.black,
        selectedIndex: selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home),
            title: Text('Events'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.play_arrow),
            title: Text('Playlist'),
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}


