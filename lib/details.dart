import 'package:flutter/material.dart';
import 'package:gathrrhome/review.dart';
import 'package:gathrrhome/trending.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double height = size.height;
    final double width = size.width;
    return Container(
      color: Colors.white,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: height * 0.055,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              //SizedBox(
              //width: width * 0.02,
              //),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Trending()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF6A6A6A),
                    )),
              ),
              //SizedBox(
              //  width: width * 0.2,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ongoing Event",
                  style: TextStyle(
                      color: Color(0xFF222455),
                      fontFamily: "JosefinSans",
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: IconButton(
                          icon: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Image(
                                image: AssetImage('assets/icon/share.png')),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: IconButton(
                          icon: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Image(
                                image: AssetImage('assets/icon/book.png')),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            Stack(
              children: <Widget>[
                ClipRRect(
                    //borderRadius: BorderRadius.circular(5.0),
                    child: Image(
                  image: AssetImage('assets/photo/brooke.png'),
                  fit: BoxFit.fill,
                  width: width * 1,
                  height: height * 0.25,
                )),
                
                         
                    
                  
                
                Padding(
                  padding: const EdgeInsets.only(top: 110),
                  child: Center(
                    
                    child: Container(
                      decoration: BoxDecoration(
                     //   color: Color(0xCCFFFFFF),
                        borderRadius:
                                              BorderRadius.circular(30.0),
                      ),
                      height: height * 0.06,
                      width: width * 0.8,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                              width: width * 0.89,
                              height: height * 0.05,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Happy Bones",
                                      style: TextStyle(
                                          color: Color(0xFF3E3F68),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "JosefinSans"),
                                    ),
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Italian",
                                        style: TextStyle(color: Colors.white,fontFamily: "JosefinSans"),
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
                                      width: width * 0.02,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1.2km",
                                        style: TextStyle(color: Colors.white,fontFamily: "JosefinSans"),
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
                                      width: width * 0.01,
                                    ),
                                   
                                  ]),
                            ),
                            Center(
                              child: Container(
                                width: width * 0.89,
                                child: Text(
                                  "394 Broome St, New York, NY 10013, USA",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xFF8A98BA),
                                      fontFamily: "JosefinSans"),
                                ),
                              ),
                            ),
                            
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                          children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: width * 0.02,
                                    ),
                                    Text("Active Now",style: TextStyle(
                                      color: Colors.red,fontSize: 15,
                                      fontFamily: "JosefinSans"
                                    ),),
                                  ],
                                ),
                                Row(
                          children: [
                                SizedBox(
                                      width: width * 0.02,
                                    ),
                                Text("9:30 am to 11:00 am",style: TextStyle(
                                  color: Colors.red,fontSize: 15,fontFamily: "JosefinSans"
                                ),),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text("Description",style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold,
                                fontFamily: "JosefinSans",
                                color: Color(0xFF3E3F68),
                              ),),
                            ],
                          ),
                        ),
                          Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("dcbsdcj ajdcbadjcba cjancja jcbajca djcbdsjc jdcbajcb djcbajc acjnajcba cnajcbaj acnajcbajc acajcnajc  ajcnajcbac  cajcbac ascjaskdsc mckancamcbah asjajack ac kvslvna cajcka cdcdln ds sdcljancs slkvmnca can sfvks  cls dvsd,m dlknsvahc cadcdlkcnc acas a elj sd sdkjalc",style: TextStyle(
                            fontSize: 15, color: Color(0xFF8A98BA),
                                      fontFamily: "JosefinSans"
                          ),),
                        ),
                        Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Attendees",
                      style: TextStyle(
                          fontSize: 20,
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
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/photo/p1.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Elon Musk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF3E3F68),
                        
                          fontFamily: "JosefinSans"),),
                          Text("Founder of SpaceX",style: TextStyle(color: Color(0xFF6E7FAA),
                          fontSize: 15,
                          fontFamily: "JosefinSans"),),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: "JosefinSans"),),color: Color(0xFF5663FF),),
                    )
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/photo/p1.jpeg'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Elon Musk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF3E3F68),
                        
                          fontFamily: "JosefinSans"),),
                          Text("Founder of SpaceX",style: TextStyle(color: Color(0xFF6E7FAA),
                          fontSize: 15,
                          fontFamily: "JosefinSans"),),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.17,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: FlatButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 18,fontFamily: "JosefinSans"),),color: Color(0xFF5663FF),),
                    )
                ],
              ),

                        
                          ],
                        ),
                              ),
                            ),



                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Review()),
              (Route<dynamic> route) => false,
            );
          },
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                gradient: LinearGradient(
                    colors: [Color(0xFFFF7D65), Color(0xFFFFA150)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                //color: Colors.deepPurpleAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 3),
                ],
              ),
              height: height * 0.08,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            "Check-In",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontFamily: "JosefinSans",
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
