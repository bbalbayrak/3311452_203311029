import 'package:flutter/material.dart';
import 'package:projectsid/Pages/home.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return uyeekrani();
  }
}


class uyeekrani extends StatefulWidget {
  const uyeekrani({Key? key}) : super(key: key);

  @override
  State<uyeekrani> createState() => _uyeekraniState();
}

class _uyeekraniState extends State<uyeekrani> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(


      body: Container(
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
          padding: const EdgeInsets.all(8.0),
          child: TextField(
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
              hintText: 'Enter your student number',
              labelText: 'Student Number',
              prefixIcon: const Icon(
                Icons.numbers,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
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
              hintText: '@ogr.selcuk.edu.tr',
              labelText: 'Email',
              prefixIcon: const Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
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
                  tileMode: TileMode.repeated),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => homePage()));
              },
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),




       ]
       ),
       )
       )
      ),
    );
  }
}

