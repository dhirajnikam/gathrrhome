import 'package:flutter/material.dart';
import 'package:gathrrhome/details.dart';
import 'package:gathrrhome/filter.dart';
import 'package:gathrrhome/home.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.02,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      )),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Text(
                    "Trending Events",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.045,
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
                      hintText: 'Search',
                      hintTextDirection: TextDirection.ltr,
                      prefixIcon:
                          Icon(Icons.search, color: Colors.blueGrey.shade200),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Filter()),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Image(
                                image: AssetImage('assets/Group 236.png'))),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
              Container(
                  // margin: EdgeInsets.symmetric(vertical: 10.0),
                  height: height * 0.65,
                  // width: width * 0.2,
                  //color: Colors.white,
                  child: ListView(scrollDirection: Axis.vertical, children: <
                      Widget>[
                    
                    GestureDetector(
                      onTap: (){
                            Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                          (Route<dynamic> route) => false,
                        );
                          },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.5),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                           // boxShadow: [BoxShadow(color: Colors.grey.shade200)]
                          ),
                          child: Column(
                            
                            children: [
                              
                              Stack(
                                children: <Widget>[
                                  Container(
                                      width: width * 0.95,
                                      height: height * 0.2,
                                      child: Image(
                                        image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/483/763/784/concerts-music-crowds-wallpaper-preview.jpg'),
                                        fit: BoxFit.fill,
                                      )),
                                  Container(
                                    width: width * 0.95,
                                    height: height * 0.2,
                                    //alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'FREE NYC',
                                          style: TextStyle(
                                              color: Colors.blue.shade200,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'NETWORKING',
                                          style: TextStyle(
                                              color: Colors.blue.shade200,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'EVENT',
                                          style: TextStyle(
                                              color: Colors.blue.shade200,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: width * 0.95,
                                height: height * 0.05,
                                //color: Colors.white,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Happy Bones",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: width * 0.013,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Italian",
                                        ),
                                        height: 30,
                                        width: 70,
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
                                        width: width * 0.013,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text("1.2km"),
                                        height: 30,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(21.0),
                                          color: const Color(0xff848dff),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.013,
                                      ),
                                      Container(
                                        height: height*0.03,
                                        width: width*0.2,
                                        child: Image(image: AssetImage('assets/friends.png'),))
                                    ]),
                              ),
                              Container(
                                //color: Colors.white,
                                width: width * 0.95,
                                child: Text(
                                  "394 Broome St, New York,NY 10013, USA",
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                            ],
                          ),
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
                                    width: width * 0.95,
                                    height: height * 0.2,
                                    child: Image(
                                      image: AssetImage('assets/photo/p3.jpg'),
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  width: width * 0.95,
                                  height: height * 0.2,
                                  //alignment: Alignment.center,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'FREE NYC',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'NETWORKING',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'EVENT',
                                        style: TextStyle(
                                            color: Colors.blue.shade200,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              width: width * 0.95,
                              height: height * 0.05,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Happy Bones",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width * 0.013,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Italian",
                                      ),
                                      height: 30,
                                      width: 70,
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
                                      width: width * 0.013,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text("1.2km"),
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                        color: const Color(0xff848dff),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.013,
                                    ),
                                    Container(
                                      height: height*0.03,
                                      width: width*0.2,
                                      child: Image(image: AssetImage('assets/friends.png'),))
                                  ]),
                            ),
                            Container(
                              width: width * 0.95,
                              child: Text(
                                "394 Broome St, New York,NY 10013, USA",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ])),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
