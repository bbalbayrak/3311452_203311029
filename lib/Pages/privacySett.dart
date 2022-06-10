import 'dart:async';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/privacySett.dart';
import 'dart:async';


import 'infoSett.dart';

class guvenlikAyarlari extends StatefulWidget {
  const guvenlikAyarlari({Key? key}) : super(key: key);

  @override
  State<guvenlikAyarlari> createState() => _guvenlikAyarlariState();
}

class _guvenlikAyarlariState extends State<guvenlikAyarlari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFBC8CF2),
        title: Image.asset('assets/images/campus logo.png',height: 45,),
        centerTitle: true,


      ),
      body: background(),
    );



  }
}
class background extends StatefulWidget {
  const background({Key? key}) : super(key: key);

  @override
  State<background> createState() => _backgroundState();
}

class _backgroundState extends State<background> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Colors.deepPurple[300],
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              focusColor: Colors.yellow,
              onPressed: () {}, child: Container(
              decoration:
              BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.account_circle,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Account Settings",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                  ),
                ],
              ),
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              focusColor: Colors.yellow,
              onPressed: () {
              }, child: Container(
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.security,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Privacy Settings",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                  ),
                ],
              ),
            ),
            ),
          ),



          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              focusColor: Colors.yellow,
              onPressed: () {
              }, child: Container(
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
              height: 50,
              width: 300,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.info_outline,size: 30,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 85),
                    child: Text("About",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                  ),
                ],
              ),
            ),
            ),
          ),


        ],
      ),
    );
  }
}








