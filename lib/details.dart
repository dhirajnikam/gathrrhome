import 'package:flutter/material.dart';
import 'package:gathrrhome/review.dart';
import 'package:gathrrhome/trending.dart';

class Details extends StatefulWidget {
  const Details({ Key? key }) : super(key: key);

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
              height: height * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                        color: Colors.black,
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
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              
                            },
                            child: Icon(Icons.share)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              
                            },
                            child: Icon(Icons.bookmark_border_outlined)),
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.5),
                            //borderRadius: BorderRadius.circular(10),
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
                                  style: TextStyle(fontSize: 20,color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                
                                Text("Active Now",style: TextStyle(
                                  color: Colors.red,fontSize: 17
                                ),),
                              ],
                            ),
                            Row(
                          children: [
                            
                            Text("9:30 am to 11:00 am",style: TextStyle(
                              color: Colors.red,fontSize: 17
                            ),),
                          ],
                        ),
                        
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("Description",style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("dcbsdcj ajdcbadjcba cjancja jcbajca djcbdsjc jdcbajcb djcbajc acjnajcba cnajcbaj acnajcbajc acajcnajc  ajcnajcbac  cajcbac ascjaskdsc mckancamcbah asjajack ac kvslvna cajcka cdcdln ds sdcljancs slkvmnca can sfvks  cls dvsd,m dlknsvahc cadcdlkcnc acas a elj sd sdkjalc",style: TextStyle(
                            color: Colors.grey
                          ),),
                        ),
                        Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Attendees",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        
                        print('working');
                      },
                      child: Text(
                        "See all(32)",
                        style: TextStyle(
                            color: Colors.blueGrey.shade200, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Elon Musk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Founder of SpaceX",style: TextStyle(color: Colors.grey.shade700),),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.23,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 17),),color: Colors.blue,),
                    )
                ],
              ),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Steve Jobs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          Text("Founder of Apple",style: TextStyle(color: Colors.grey.shade700),),

                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.26,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 17),),color: Colors.blue,),
                    )
                ],
              ),
              ],
            ),
            bottomNavigationBar:GestureDetector(
              onTap: (){
                Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Review()),
                          (Route<dynamic> route) => false,
                        );
              },
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30)),
                gradient: LinearGradient(colors: [Colors.orange.shade900,Colors.orange.shade300],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                //color: Colors.deepPurpleAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 3),
                ],
              ),
              height: height * 0.095,
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
                                color: Colors.white,
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