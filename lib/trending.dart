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
                        color: Color(0xFF6A6A6A),
                      )),
                  SizedBox(
                    width: width * 0.2,
                  ),
                  Text(
                    "Trending Events",
                    style: TextStyle(
                        color: Color(0xFF222455),
                        fontFamily: "JosefinSans",
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
                      //border: Border.all(color: HexColor("#6E7FAA")),
                      boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                          fontSize: 23,
                          color: Color(0xFF6E7FAA),
                          fontFamily: "JosefinSans"),
                      hintText: 'Find Events',
                      hintTextDirection: TextDirection.ltr,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(image: AssetImage('assets/Path 78.png')),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(image: AssetImage('assets/Group 236.png')),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                ),
              ),
           
              Container(
                  height: height * 0.69,
                  child: ListView(scrollDirection: Axis.vertical, shrinkWrap: true,children: <
                      Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Padding(
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
                                        width: width * 0.95,
                                        height: height * 0.25,
                                      )),
                                  Container(
                                    width: width * 0.95,
                                    height: height * 0.25,
                                    //alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    width: width * 0.95,
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
                                          width: width * 0.6,
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
                                width: width * 0.95,
                                height: height * 0.05,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Happy Bones",
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
                                              Color(0xFFFF5673),
                                              Color(0xFFFF8C48)
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
                                            image: AssetImage(
                                                'assets/friends.png'),
                                          ))
                                    ]),
                              ),
                              Center(
                                child: Container(
                                  width: width * 0.95,
                                  child: Text(
                                    "394 Broome St, New York, NY 10013, USA",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF8A98BA)),
                                  ),
                                ),
                              )
                            ],
                          ),
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
                                        width: width * 0.95,
                                        height: height * 0.25,
                                      )),
                                  Container(
                                    width: width * 0.95,
                                    height: height * 0.25,
                                    //alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    width: width * 0.95,
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
                                          width: width * 0.6,
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
                                width: width * 0.95,
                                height: height * 0.05,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Happy Bones",
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
                                              Color(0xFFFF5673),
                                              Color(0xFFFF8C48)
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
                                            image: AssetImage(
                                                'assets/friends.png'),
                                          ))
                                    ]),
                              ),
                              Center(
                                child: Container(
                                  width: width * 0.95,
                                  child: Text(
                                    "394 Broome St, New York, NY 10013, USA",
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
                                        width: width * 0.95,
                                        height: height * 0.25,
                                      )),
                                  Container(
                                    width: width * 0.95,
                                    height: height * 0.25,
                                    //alignment: Alignment.center,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                    width: width * 0.95,
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
                                          width: width * 0.6,
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
                                width: width * 0.95,
                                height: height * 0.05,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Happy Bones",
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
                                              Color(0xFFFF5673),
                                              Color(0xFFFF8C48)
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
                                            image: AssetImage(
                                                'assets/friends.png'),
                                          ))
                                    ]),
                              ),
                              Center(
                                child: Container(
                                  width: width * 0.95,
                                  child: Text(
                                    "394 Broome St, New York, NY 10013, USA",
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
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(
                        Icons.home,
                        color: Color(0xFF5663FF),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(Icons.bookmark_border_outlined,color: Color(0xFF6E7FAA),),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 65.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(
                        Icons.add_circle,
                        color: Color(0xFF5663FF),
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(Icons.notifications_outlined,color: Color(0xFF6E7FAA),),
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 30.0,
                      padding: const EdgeInsets.all(8.0),
                      icon: Icon(Icons.person_outline,color: Color(0xFF6E7FAA),),
                      onPressed: () {},
                    )
                  ],
                ),
              )),
        ));
  }
}
