import 'dart:ui';
import 'package:flutter/widgets.dart';

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
                      //border: Border.all(color: HexColor("#6E7FAA")),
                      boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF6E7FAA),
                          fontFamily: "JosefinSans"),
                      hintText: 'Find Events',
                      hintTextDirection: TextDirection.ltr,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Image(image: AssetImage('assets/Path 78.png')),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(18.0),
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
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "JosefinSans",
                          color: Color(0xFF222455)),
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
                        "See all (9)",
                        style: TextStyle(
                            color: Color(0xFF6E7FAA),
                            fontSize: 15,
                            fontFamily: "JosefinSans"),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  // margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: height * 0.35,
                  // width: width * 0.2,

                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image(
                                      image: AssetImage('assets/cover.jpg'),
                                      fit: BoxFit.fill,
                                      width: width * 0.87,
                                      height: height * 0.25,
                                    )),
                                Container(
                                  width: width * 0.87,
                                  height: height * 0.25,
                                  //alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'FREE NYC',
                                        style: TextStyle(
                                            color: Color(0xFF00ffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NETWORKING',
                                        style: TextStyle(
                                            color: Color(0xFF00ffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'EVENT',
                                        style: TextStyle(
                                            color: Color(0xFF00ffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.87,
                                  height: height * 0.05,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        color: Colors.white,
                                        child: Text(
                                          "3:30",
                                          style: TextStyle(
                                            color: Color(0xFF4CD964),
                                            fontFamily: "JosefinSans",
                                            fontWeight: FontWeight.bold,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.5,
                                      ),
                                      Container(
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        color: Colors.white,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber.shade300,
                                            ),
                                            Text("4.5")
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: width * 0.87,
                              height: height * 0.05,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Pune Meetup",
                                      style: TextStyle(
                                          color: Color(0xFF3E3F68),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "JosefinSans"),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Italian",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFFF8C48),
                                            Color(0xFFFF5673),
                                            
                                          ],
                                          //stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1.2km",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                        color: const Color(0xff848dff),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Container(
                                        //height: height*0.1,
                                        width: width * 0.2,
                                        child: Image(
                                          image:
                                              AssetImage('assets/friends.png'),
                                        ))
                                  ]),
                            ),
                            Center(
                              child: Container(
                                width: width * 0.87,
                                child: Text(
                                  "Bhau Institute, Shivajinagar, Pune",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF8A98BA)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image(
                                      image: AssetImage('assets/cover.jpg'),
                                      fit: BoxFit.fill,
                                      width: width * 0.87,
                                      height: height * 0.25,
                                    )),
                                Container(
                                  width: width * 0.87,
                                  height: height * 0.25,
                                  //alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'FREE NYC',
                                        style: TextStyle(
                                            color: Color(0xFF00ffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NETWORKING',
                                        style: TextStyle(
                                            color: Color(0xFF00ffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'EVENT',
                                        style: TextStyle(
                                            color: Color(0xFF00ffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: width * 0.87,
                                  height: height * 0.05,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        color: Colors.white,
                                        child: Text(
                                          "3:30",
                                          style: TextStyle(
                                            color: Color(0xFF4CD964),
                                            fontFamily: "JosefinSans",
                                            fontWeight: FontWeight.bold,
                                          ),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.5,
                                      ),
                                      Container(
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        color: Colors.white,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber.shade300,
                                            ),
                                            Text("4.5")
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.02,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: width * 0.87,
                              height: height * 0.05,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Pune Meetup",
                                      style: TextStyle(
                                          color: Color(0xFF3E3F68),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "JosefinSans"),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Italian",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFFF8C48),
                                            Color(0xFFFF5673),
                                            
                                          ],
                                          //stops: [0.0, 1.0],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1.2km",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      height: height * 0.025,
                                      width: width * 0.12,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                        color: const Color(0xff848dff),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.005,
                                    ),
                                    Container(
                                        //height: height*0.1,
                                        width: width * 0.2,
                                        child: Image(
                                          image:
                                              AssetImage('assets/friends.png'),
                                        ))
                                  ]),
                            ),
                            Center(
                              child: Container(
                                width: width * 0.87,
                                child: Text(
                                  "Bhau Institute, Shivajinagar, Pune",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF8A98BA)),
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
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3E3F68),
                          fontFamily: "JosefinSans"),
                    ),
                    Text(
                      "See all (9)",
                      style: TextStyle(
                          color: Color(0xFF6E7FAA),
                          fontSize: 15,
                          fontFamily: "JosefinSans"),
                    )
                  ],
                ),
              ),
              Container(
                  height: height * 0.15,
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
                          Positioned.fill(
                              child: Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFF5673).withOpacity(0.7),
                                    Color(0xFFFF8C48).withOpacity(0.7)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            // color: Colors.amberAccent.withOpacity(0.1)
                          )),
                          Positioned(
                            top: height * 0.05,
                            bottom: 0.0,
                            right: 0.0,
                            left: width * 0.045,
                            child: Container(
                              child: Text("Meetup",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "JosefinSans")),
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
                                  image:
                                      new AssetImage('assets/food/food3.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          Positioned.fill(
                              child: Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF832BF6).withOpacity(0.7),
                                    Color(0xFFFF4665).withOpacity(0.7)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            // color: Colors.amberAccent.withOpacity(0.1)
                          )),
                          Positioned(
                            top: height * 0.05,
                            bottom: 0.0,
                            right: 0.0,
                            left: width * 0.045,
                            child: Container(
                              child: Text("StartUp",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "JosefinSans")),
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
                                fit: BoxFit.fill,
                              ),
                            ),

                            //child: Image(image: AssetImage('assets/food/food2.jpg'),fit: BoxFit.fill,),
                          ),
                          Positioned.fill(
                              child: Container(
                            width: width * 0.29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF2DCEF8).withOpacity(0.7),
                                    Color(0xFF3B40FE).withOpacity(0.7)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            // color: Colors.amberAccent.withOpacity(0.1)
                          )),
                          Positioned(
                            top: height * 0.05,
                            bottom: 0.0,
                            right: 0.0,
                            left: width * 0.045,
                            child: Container(
                              child: Text(
                                "College",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "JosefinSans"),
                              ),
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
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3E3F68),
                          fontFamily: "JosefinSans"),
                    ),
                    Text(
                      "See all (56)",
                      style: TextStyle(
                          color: Color(0xFF6E7FAA),
                          fontSize: 15,
                          fontFamily: "JosefinSans"),
                    )
                  ],
                ),
              ),
              Container(
                  height: height * 0.075,
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
                      color: Color(0xFF3E3F68), spreadRadius: 0, blurRadius: 1),
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
                      icon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:
                            Image(image: AssetImage('assets/icon/home.png')),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:
                            Image(image: AssetImage('assets/icon/book.png')),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      
                      iconSize: 75,
                     // splashColor: Color(0xFF5663FF),
                      icon: Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child:
                            Image(image: AssetImage('assets/icon/circle.png')),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:
                            Image(image: AssetImage('assets/icon/ring.png')),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child:
                            Image(image: AssetImage('assets/icon/person.png')),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              )),
        ));
  }
}
