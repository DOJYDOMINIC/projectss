import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Detailss(),debugShowCheckedModeBanner: false,));
}

class Detailss extends StatefulWidget{
  @override
  State<Detailss> createState() => _DetailsState();
}

class _DetailsState extends State<Detailss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                  children: [
                    Container(child: Row(
                      children: [
                        Column(
                          children: [
                            Text("Most Luxurious &",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900),maxLines: 2,),
                            Text("Peaceful Natural Places",style: TextStyle(fontSize:20,fontWeight: FontWeight.w900),maxLines: 2,),
                            SizedBox(height: 5,),
                            Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.star,color: Colors.yellow,size:20,),
                                Icon(Icons.star,color: Colors.yellow,size: 20,),
                                Icon(Icons.star,color: Colors.yellow,size: 20,),
                                Icon(Icons.star_half_outlined,color: Colors.yellow,size: 20,),
                                Text('4.5 Ratings')
                              ],),
                          ],
                        ),
                        SizedBox(width: 10,),
                        // VerticalDivider(
                        //   color: Colors.bla
                        //   thickness:15,
                        // ),

                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(55)),
                          height:90,width: 150,
                          child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV_9ZrTDPCeiCej-1isidCeI-29kU7EE3Now&usqp=CAU"),
                          ),
                        ),
                      ],
                    ),

                    ),
                    Column(
                      children:  [
                        Padding(
                          padding:  EdgeInsets.only(right:300,top:25),
                          child:
                          Text("About Place",style: TextStyle(fontSize:16,fontWeight: FontWeight.w600),),

                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "A resort is a place used for vacation, relaxation or as a daytime getaway. While this can be a single structure such as a hotel, it also can be a whole island or a ship at sea. One of the most looked-for aspects of a resort is that visitors are freed from most daily errands, which are typically taken care of by the facility’s staff. Numerous activities are usually presented at resorts, as well as massages, meals, live entertainment and cosmetic treatments.",
                            style: TextStyle(
                                fontSize:13,
                                color: Colors.black),textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top:15),
                          child:
                          Row(
                            children: [
                              Text("Special ",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
                              Text("Facilities ",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top:15),
                          child:
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.dining_outlined,color: Colors.indigo,),
                              Text("Dining",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500),),
                              SizedBox(width:30,),
                              Icon(Icons.room_service_outlined,color: Colors.indigo,),
                              Text("Room Services",style: TextStyle(fontSize:15,fontWeight:FontWeight.w500),),
                              SizedBox(width:40),
                              Icon(Icons.wifi,color: Colors.indigo,),
                              Text("Wifi",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w500),),
                            ],
                          ),
                        ),
                        SizedBox(height:15,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK5hOhEAS9K-dko0pCG2FH-o2WJuD0MiAzDw&usqp=CAU",
                            fit: BoxFit.cover,
                            height:150 ,
                            width: 350,),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top:15),
                          child:
                          Row(
                            children: [
                              Text("Our ",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
                              Text("Packages ",style: TextStyle(fontSize:18,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text("Adult",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text("Child",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text("Night",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[100],
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: 50,
                              width: 50,
                              child: Center(
                                child: Text("VIP",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:25,),
                        Container(height: 50,width:390,
                          decoration: BoxDecoration(
                              color:Colors.indigo,
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            title: Text("\$8600                                                     Booking",style: TextStyle(color: Colors.white),),
                            trailing: Icon(Icons.arrow_forward,color: Colors.white,),
                          ),)
                      ],),
                  ])

          ),),
      ),);

  }
}