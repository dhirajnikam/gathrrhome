import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:gathrrhome/trending.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Container(
        color: Colors.grey.shade50,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: height * 0.075,
              ),
              Center(
                child: Container(
                  height: height * 0.07,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blueGrey.shade200),
                      boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Colors.black),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 17, color: Colors.blueGrey.shade200),
                      hintText: 'Find Events',
                      hintTextDirection: TextDirection.ltr,
                      prefixIcon:
                          Icon(Icons.search, color: Colors.blueGrey.shade200),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image(image: AssetImage('assets/Group 236.png')),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Events",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Trending()),
                          (Route<dynamic> route) => false,
                        );
                        print('working');
                      },
                      child: Text(
                        "See all(9)",
                        style: TextStyle(
                            color: Colors.blueGrey.shade200, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  // margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: height * 0.3,
                  // width: width * 0.2,

                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.5),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                    width: width * 0.6,
                                    height: height * 0.2,
                                    child: Image(
                                      image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/483/763/784/concerts-music-crowds-wallpaper-preview.jpg'),
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  width: width * 0.6,
                                  height: height * 0.2,
                                  //alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'FREE NYC',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NETWORKING',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'EVENT',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: width * 0.6,
                              height: height * 0.05,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Happy Bones",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                        width: width * 0.01,
                                      ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Italian",
                                      ),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.93, 0.0),
                                          end: Alignment(-1.0, 0.0),
                                          colors: [
                                            const Color(0xa6ff5673),
                                            const Color(0xa6ff8c48)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x08000000),
                                            offset: Offset(0, 10),
                                            blurRadius: 99,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.01,
                                      ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text("1.2km"),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                        color: const Color(0xff848dff),
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.01,
                                      ),
                                    Container(
                                        height: height*0.03,
                                        width: width*0.09,
                                        child: Image(image: AssetImage('assets/friends.png'),))
                                  ]),
                                  
                            ),
                            Center(
                              child: Container(
                                width: width * 0.6,
                                child: Text(
                                  "394 Broome St, New York,NY 10013, USA",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.5),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                Container(
                                    width: width * 0.6,
                                    height: height * 0.2,
                                    child: Image(
                                      image: AssetImage('assets/photo/p3.jpg'),
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  width: width * 0.6,
                                  height: height * 0.2,
                                  //alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'FREE NYC',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NETWORKING',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'EVENT',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: width * 0.6,
                              height: height * 0.05,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Happy Bones",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                        width: width * 0.01,
                                      ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Italian",
                                      ),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        gradient: LinearGradient(
                                          begin: Alignment(0.93, 0.0),
                                          end: Alignment(-1.0, 0.0),
                                          colors: [
                                            const Color(0xa6ff5673),
                                            const Color(0xa6ff8c48)
                                          ],
                                          stops: [0.0, 1.0],
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0x08000000),
                                            offset: Offset(0, 10),
                                            blurRadius: 99,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.01,
                                      ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text("1.2km"),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                        color: const Color(0xff848dff),
                                      ),
                                    ),
                                    SizedBox(
                                        width: width * 0.01,
                                      ),
                                      Container(
                                        height: height*0.03,
                                        width: width*0.09,
                                        child: Image(image: AssetImage('assets/friends.png'),))
                                  ]),
                            ),
                            Center(
                              child: Container(
                                width: width * 0.6,
                                child: Text(
                                  "394 Broome St, New York,NY 10013, USA",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ])),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all(9)",
                      style: TextStyle(
                          color: Colors.blueGrey.shade200, fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                  height: height * 0.16,
                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             // gradient: LinearGradient(colors: [Colors.lightBlueAccent.withOpacity(0.1),Colors.indigo.withOpacity(0.1)]),
                              image: DecorationImage(
                                  image: AssetImage('assets/food/food2.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                         
                          Positioned.fill(child: Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [Colors.red.withOpacity(0.7),Colors.orange.withOpacity(0.7)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                            ),
                           // color: Colors.amberAccent.withOpacity(0.1)
                          )),
                          Positioned(
                            top: height * 0.06,
                            bottom: 0.0,
               right: 0.0,
               left: width * 0.06,
                            child: Container(
                            child: Text("Meetup",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          
                          Container(
                              width: width * 0.29,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: new DecorationImage(
                                  image: new AssetImage('assets/food/food3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Positioned.fill(child: Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [Colors.deepOrangeAccent.withOpacity(0.7),Colors.indigoAccent.withOpacity(0.7)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                            ),
                           // color: Colors.amberAccent.withOpacity(0.1)
                          )),
                          Positioned(
                            top: height * 0.06,
                            bottom: 0.0,
               right: 0.0,
               left: width * 0.06,
                            child: Container(
                            child: Text("StartUp",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(10),
                              image: new DecorationImage(
                                  image: new AssetImage('assets/food/food1.webp'),
                                  fit: BoxFit.fill,),
                            ),

                            //child: Image(image: AssetImage('assets/food/food2.jpg'),fit: BoxFit.fill,),
                          ),
                          Positioned.fill(child: Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [Colors.green.withOpacity(0.7),Colors.indigo.withOpacity(0.7)],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                            ),
                           // color: Colors.amberAccent.withOpacity(0.1)
                          )),
                          Positioned(
                            top: height * 0.06,
                            bottom: 0.0,
               right: 0.0,
               left: width * 0.06,
                            child: Container(
                            child: Text("College",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,)),
                            ),
                          ),
                        ],
                      ),
                    ),
        
                  ])),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Network",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all(56)",
                      style: TextStyle(
                          color: Colors.blueGrey.shade200, fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                  height: height * 0.1,
                  //width: width * 0.2,
                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p1.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p2.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p3.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p1.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p2.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p3.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/photo/p1.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
          bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 3),
                ],
              ),
              height: height * 0.09,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(
                        Icons.home,
                        color: Colors.deepPurpleAccent,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(Icons.bookmark_border_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 60.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(
                        Icons.add_circle,
                        color: Colors.deepPurpleAccent,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(Icons.notifications_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(Icons.person_outline),
                      onPressed: () {},
                    )
                  ],
                ),
              )),
        ));
  }
}
