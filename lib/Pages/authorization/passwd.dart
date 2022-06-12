import 'package:flutter/material.dart';
import 'package:projectsid/Pages/authorization/createAccount.dart';
import 'package:projectsid/Pages/home.dart';

class passwdPage extends StatefulWidget {
  @override
  _passwdPageState createState() => _passwdPageState();
}

class _passwdPageState extends State<passwdPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return const Scaffold(
      body: Center(
        child: passwd(),
      ),
    );
  }
}

class passwd extends StatefulWidget {
  const passwd({Key? key}) : super(key: key);

  @override
  State<passwd> createState() => _passwdState();
}

class _passwdState extends State<passwd> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.deepPurple[300],
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Please enter your e-mail address to reset your password.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            textBaseline: TextBaseline.alphabetic,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(),
                     const Padding(
                       padding: EdgeInsets.all(17),
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
                          hintText: 'Enter your email',
                          labelText: 'Email',
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
                              tileMode: TileMode.repeated),
                        ),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => const homePage()));
                          },
                          child: const Text(
                            'Reset Password',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),

                    ),
                    Container(

                      child: Padding(
                        padding: const EdgeInsets.only(left: 150,right: 150),
                        child: MaterialButton(onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => createAccount()));

                        },
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Icon(Icons.arrow_back,size: 15,color: Colors.white,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: Text("Back",style: TextStyle(color: Colors.white, fontSize: 15),),
                              ),
                            ],
                          ),

                        ),
                      ),
                    )

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

