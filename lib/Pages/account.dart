import 'dart:async';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/accountSett.dart';
import 'package:projectsid/Pages/privacySett.dart';
import 'package:projectsid/Pages/userData.dart';
import 'dart:async';

import 'createAccount.dart';

import 'infoSett.dart';

class accountPage extends StatefulWidget {
  const accountPage({Key? key}) : super(key: key);

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,
          automaticallyImplyLeading: false,

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
             padding: const EdgeInsets.only(top: 20),
             child: Padding(
               padding: const EdgeInsets.all(15.0),
               child: Container(
                 decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Color(0xFF998CEB)),
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column( mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${UserName}@ogr.selcuk.edu.tr",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.white),),
                        Text("${UserName} ",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.white),),
                      ],
                   ),
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: MaterialButton(
               focusColor: Colors.yellow,
               onPressed: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder: (_) => accountSett()));
               }, child: Container(
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
                 Navigator.push(context,
                     MaterialPageRoute(builder: (_) => guvenlikAyarlari()));
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
                 Navigator.push(context,
                     MaterialPageRoute(builder: (_) => infoAbout()));
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

           Padding(
             padding: const EdgeInsets.all(20.0),
             child: MaterialButton(
               focusColor: Colors.yellow,
    onPressed: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => createAccount()));

    }, child: Container(
               decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
               height: 50,
               width: 300,
               child: Row(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Icon(Icons.logout,size: 30,),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 80),
                     child: Text("Log Out",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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








