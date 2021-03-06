import 'package:flutter/material.dart';
import 'package:gathrrhome/trending.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _press1 = true;
  bool _press2 = true;
  bool _press3 = true;
  bool _press4 = true;
  bool _press5 = true;
  bool _press6 = true;
  bool _press7 = true;
  bool _press8 = true;
  bool _press9 = true;
  bool _press10 = true;
  bool _press11 = true;
  bool _press12 = true;
  bool _press13 = true;
  bool _press14 = true;
  bool _press15 = true;
  bool _press16 = true;
  bool _press17 = true;
  bool _press18 = true;

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
              height: height * 0.055,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
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
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Filter",
                    style: TextStyle(
                        color: Color(0xFF222455),
                        fontFamily: "JosefinSans",
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
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
                      child: Icon(Icons.close_outlined,color: Color(0xFF222455),)),
                )
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Center(
              child: Text(
                "Select Category",
                style: TextStyle(
                  fontFamily: "JosefinSans",
                    color: Color(0xFF3E3F68),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press1 = !_press1;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press1
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press1 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press2 = !_press2;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press2
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press2 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press3 = !_press3;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press3
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press3 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press4 = !_press4;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press4
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Casual",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press4 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press5 = !_press5;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press5
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Fun",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press5 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press6 = !_press6;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press6
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Adventure",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press6 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press7 = !_press7;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press7
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press7 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press8 = !_press8;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press8
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press8 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press9 = !_press9;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press9
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press9 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press10 = !_press10;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press10
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Casual",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press10 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press11 = !_press11;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press11
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Fun",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press11 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press12 = !_press12;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press12
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Adventure",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press12 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press13 = !_press13;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press13
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Business",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press13 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press14 = !_press14;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press14
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Meetup",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press14 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press15 = !_press15;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press15
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Startup",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press15 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press16 = !_press16;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press16
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Casual",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press16 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press17 = !_press17;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press17
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Fun",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press17 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => {
                      setState(() {
                        _press18 = !_press18;
                      })
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: _press18
                                ? [Colors.white, Colors.white]
                                : [Color(0xFFFF8C48), Color(0xFFFF5673)]),
                        //border: Border.all(
                          
                          //  color: _press1 ? Color(0xFF707070) : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                        new BoxShadow(
                            //offset: Offset(1,1),
                            color: Color(0xFF6E7FAA)),
                      ]),
                      
                      height: height * 0.05,
                      width: width * 0.25,
                      child: Center(
                          child: Text(
                        "Adventure",
                        style: TextStyle(
                          fontFamily: "JosefinSans",
                            fontSize: 19,
                            color: _press18 ? Color(0xFF3E3F68) : Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Color(0xFF5663FF),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 0),
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
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "Reset",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          fontFamily: "JosefinSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),SizedBox(
                      width: width * 0.2,
                    ),
                    Container(height: height * 0.08, child: VerticalDivider(color: Colors.white)),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: "JosefinSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
