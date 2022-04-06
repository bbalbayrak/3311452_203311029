import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/search.dart';

import 'account.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.supervised_user_circle,size: 27,
            ),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const accountPage()));},
          ),


          actions: [

            IconButton(
              icon: Icon(
                Icons.search,size: 27,
              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const searchPage()));},
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
            ),


          ],
        ),
        body: taslak());
  }
}

class taslak extends StatefulWidget {
  taslak({Key? key}) : super(key: key);

  @override
  State<taslak> createState() => _taslakState();
}

class _taslakState extends State<taslak> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.deepPurple[300],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: screenSize.width * .9,
              height: screenSize.height * .3,

              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[

                    Container(
                        width: screenSize.width * .9,
                        height: screenSize.height * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff7c94b6),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/etkinlik4.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
                    ),


                   Container(
                 width: screenSize.width * .9,
                 height: screenSize.height * .3,
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: const Color(0xff7c94b6),
                 image: const DecorationImage(
                 image: AssetImage("assets/images/etkinlik1.jpeg"),
                   fit: BoxFit.cover,
                 ),
                border: Border.all(
                 color: Colors.transparent,
                  ),
                 ),
               ),

                  Container(
                    width: screenSize.width * .9,
                    height: screenSize.height * .3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/etkinlik2.jpg"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                  ),

                  Container(
                    width: screenSize.width * .9,
                    height: screenSize.height * .3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/etkinlik3.jfif"),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                  ),








                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.transparent,),
                width: screenSize.width * .9,
                height: screenSize.height * .3,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(onPressed:(){},
                      child: Container(
                        decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple[100],
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 18,right: 10),
                          child: Text(
                            "Wants",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 15),
                          ),
                        ),
                        width: screenSize.width * .20,
                        height: screenSize.height * .25,

                      ),
                    ),

                    MaterialButton(onPressed:(){},
                      child: Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple[100],
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 14,right: 10),
                          child: Text(
                            "Casualties",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 17,),
                          ),
                        ),
                        width: screenSize.width * .26,
                        height: screenSize.height * .25,

                      ),
                    ),

                    MaterialButton(onPressed:(){},
                      child: Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.purple[100],
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 17,right: 10),
                          child: Text(
                            "Needs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 15),
                          ),
                        ),
                        width: screenSize.width * .20,
                        height: screenSize.height * .25,

                      ),
                    ),


                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.transparent,),
                width: screenSize.width * .9,
                height: screenSize.height * .2,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    MaterialButton(onPressed:(){},
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.purple[100],),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Suggestions"
                           ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.black),),
                        ),
                        width: screenSize.width * .37,
                        height: screenSize.height * .1,

                      ),
                    ),
                    MaterialButton(onPressed:(){},
                      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.purple[100],),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Complaints"
                            ,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.black),
                          ),
                        ),
                        width: screenSize.width * .37,
                        height: screenSize.height * .1,

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
