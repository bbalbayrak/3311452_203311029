
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';
import 'package:projectsid/Pages/authorization/passwd.dart';
import 'package:projectsid/services/services.dart';

import 'signIn.dart';


class createAccount extends StatefulWidget {
  @override
  _createAccount createState() => _createAccount();
}

class _createAccount extends State<createAccount> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return const Scaffold(
      
      body: arkaPlan(),
    );
  }
}

class arkaPlan extends StatefulWidget {
  const arkaPlan({Key? key}) : super(key: key);

  @override
  State<arkaPlan> createState() => _arkaPlanState();
}

class _arkaPlanState extends State<arkaPlan> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final AuthService _authService = AuthService();
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
                    child: SizedBox(

                        child: Image.asset('assets/images/campus logo.png'),width: screenSize.width*0.7,
                    height: screenSize.height*0.2,),


                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 20, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: _emailController,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),

                  decoration: const InputDecoration(
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
                    prefixIcon: Icon(
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
                child: TextField(
                  obscureText: true,
                  controller: _passwordController,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),

                  decoration: const InputDecoration(
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
                    prefixIcon: Icon(
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
                      gradient: const LinearGradient(
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
                      _authService
                          .signIn(
                          _emailController.text, _passwordController.text)
                          .then((value) {
                        return Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomPage()));
                      });
                    },
                    child: const Text(
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
                    gradient: const LinearGradient(
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
                        MaterialPageRoute(builder: (_) => const signIn()));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),

              ),


              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
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
                  child: const Text(
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

