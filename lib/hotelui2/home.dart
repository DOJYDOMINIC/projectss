import 'package:flutter/material.dart';
import 'firstpage.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourismapp(),
  ));
}

class Tourismapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/interface-62/300/airplane-512.png"),
                ),
              ),
                SizedBox(height: 100,),
                SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Firstpage()));
                  },
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                      child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 30),
                child: Text("- or -"),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 300,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Login With Facebook",style: TextStyle(color: Colors.white),),
                    ),
                    Image(
                      fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn1.iconfinder.com/data/icons/social-media-logos-7/64/facebook-512.png"))
                  ],
                ),
                ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 300,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Login With Twitter",style: TextStyle(color: Colors.white),),
                    ),
                    Image(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://cdn3.iconfinder.com/data/icons/2018-social-media-logotypes/1000/2018_social_media_popular_app_logo_twitter-512.png"))
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 300,
                height: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Login With Google",style: TextStyle(color: Colors.white),),
                    ),
                    Image(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://cdn2.iconfinder.com/data/icons/social-media-free-20/32/google_search_online_social_media-2-512.png"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

