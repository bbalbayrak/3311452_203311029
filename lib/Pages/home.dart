import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projectsid/Pages/Firestoreimage.dart';
import 'package:projectsid/Pages/bottomBar.dart';
import 'package:projectsid/Pages/casualties.dart';
import 'package:projectsid/Pages/search.dart';
import 'package:projectsid/Pages/wants.dart';

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
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,



          actions: [


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
            ),


          ],
        ),
        body: taslak(),
        );
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
      color: Colors.white,
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
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
                      child: usersData(),
                    ),




                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Container(decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.transparent,),
                width: screenSize.width * .9,
                height: screenSize.height * .3,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(onPressed:(){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => wantsPage()));
                    },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.8, color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                          color: Color(0xFFBC8CF2),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 25,right: 10),
                          child: Text(
                            "Wants",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 17),
                          ),
                        ),
                        width: screenSize.width * .25,
                        height: screenSize.height * .20,

                      ),
                    ),

                    MaterialButton(onPressed:(){

                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => casualPage()));

                    },
                      child: Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 0.8, color: Colors.black),
                        color: Color(0xFFBC8CF2),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 14,right: 10),
                          child: Text(
                            "Casualties",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black, fontSize: 17,),
                          ),
                        ),
                        width: screenSize.width * .26,
                        height: screenSize.height * .20,

                      ),
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:1),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.transparent,),
                width: screenSize.width * .9,
                height: screenSize.height * .1,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    MaterialButton(onPressed:(){},
                      child: Container(decoration: BoxDecoration(
                        border: Border.all(width: 0.8, color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFBC8CF2),),
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
                      child: Container(decoration: BoxDecoration(
                        border: Border.all(width: 0.8, color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFBC8CF2),),
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
