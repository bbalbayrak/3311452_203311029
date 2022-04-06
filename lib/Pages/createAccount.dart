import 'dart:ui';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projectsid/Pages/home.dart';
import 'package:projectsid/Pages/passwd.dart';

import 'signIn.dart';


class createAccount extends StatefulWidget {
  @override
  _createAccount createState() => _createAccount();
}

class _createAccount extends State<createAccount> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      
      body: arkaPlan(),
    );
  }
}

class arkaPlan extends StatefulWidget {
  arkaPlan({Key? key}) : super(key: key);

  @override
  State<arkaPlan> createState() => _arkaPlanState();
}

class _arkaPlanState extends State<arkaPlan> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        color: Colors.deepPurple[300],
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Container(
                    //width: 200,
                    //height: 150,
                    child: Container(

                        child: Image.asset('assets/images/campus logo.png'),width: screenSize.width*0.7,
                    height: screenSize.height*0.2,),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: new TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white60),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: new TextField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white60),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.password,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(

                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(20),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 205, 3, 255),
                            Color.fromARGB(255, 74, 5, 99),
                          ],
                          stops: [
                            0.6,
                            0.9,
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          tileMode: TileMode.repeated),),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => homePage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),


               Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    gradient: new LinearGradient(
                        colors: [
                          Color.fromARGB(255, 205, 3, 255),
                          Color.fromARGB(255, 74, 5, 99),
                        ],
                        stops: [
                          0.6,
                          0.9,
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        tileMode: TileMode.repeated),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => signIn()));
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

              ),


              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(255, 205, 3, 255),
                        Color.fromARGB(255, 74, 5, 99),
                      ],
                      stops: [
                        0.6,
                        0.9,
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      tileMode: TileMode.repeated),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => passwdPage()));
                  },
                  child: Text(
                    'Forgot My Password',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}

