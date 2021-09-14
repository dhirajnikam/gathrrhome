import 'package:flutter/material.dart';
import 'package:gathrrhome/details.dart';
import 'package:gathrrhome/trending.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;
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
                          MaterialPageRoute(builder: (context) => Details()),
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
                    "Review & Ratings",
                    style: TextStyle(
                        color: Color(0xFF222455),
                        fontFamily: "JosefinSans",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
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
            Padding(
            padding: const EdgeInsets.only(top:18.0,bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffEEF7FF),
                borderRadius: BorderRadius.circular(23),
              ),
              height: height * 0.09,
              width: width * 0.9,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     IconButton(icon:const Icon(Icons.star),
                     iconSize: 50,
                      onPressed: ()=>setState((){
                        _myColorOne=Colors.orange;
                       _myColorTwo=Colors.grey;
                        _myColorThree=Colors.grey;
                        _myColorFour=Colors.grey;
                        _myColorFive=Colors.grey;
                    }),color: _myColorOne,),
                     IconButton(icon:   const Icon(Icons.star),
                     iconSize: 50,

                      onPressed: ()=>setState((){
                        _myColorOne=Colors.orange;
                        _myColorTwo=Colors.orange;
                        _myColorThree=Colors.grey;
                        _myColorFour=Colors.grey;
                        _myColorFive=Colors.grey;
                    }),color: _myColorTwo,),
                     IconButton(
                       
                     iconSize: 50,
                       icon:   const Icon(Icons.star), onPressed: ()=>setState((){
                      _myColorOne=Colors.orange;
                      _myColorTwo=Colors.orange;
                      _myColorThree=Colors.orange;
                      _myColorFour=Colors.grey;
                      _myColorFive=Colors.grey;
                    }),color: _myColorThree,),
                     IconButton(
                     iconSize: 50,
                       
                       icon:   const Icon(Icons.star), onPressed: ()=>setState((){
                      _myColorOne=Colors.orange;
                      _myColorTwo=Colors.orange;
                      _myColorThree=Colors.orange;
                      _myColorFour=Colors.orange;
                      _myColorFive=Colors.grey;
                    }),color: _myColorFour,),
                     IconButton(
                     iconSize: 50,
                       icon:   const Icon(Icons.star), onPressed: ()=>setState((){
                      _myColorOne=Colors.orange;
                      _myColorTwo=Colors.orange;
                      _myColorThree=Colors.orange;
                      _myColorFour=Colors.orange;
                      _myColorFive=Colors.orange;
                    }),color: _myColorFive,),
                  ],

              ),
            ),
          ),
          SizedBox(
            height: height * 0.017,
          ),
          Text("Rate your experience",style: TextStyle(color: Color(0xFF8A98BA),
                      fontFamily: "JosefinSans",fontSize: 15),),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),

              child: Container(
                //color: Color(0xFF8A98BA),
                height: height * 0.3,
              width: width * 0.9,
                child: TextFormField(maxLines:10,
                
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(
                      color: Color(0xFF8A98BA),
                      fontFamily: "JosefinSans",
                    ),
                    hintText: 'Write your experience',
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
    
              color: Color(0xFF5663FF),
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
                          "Done",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                                fontFamily: "JosefinSans",
                                fontSize: 22,
                              
                              fontWeight: FontWeight.bold),
                        ),
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
