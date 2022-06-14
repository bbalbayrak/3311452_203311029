import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/authorization/createAccount.dart';


class passwdPage extends StatefulWidget {
  const passwdPage({Key? key}) : super(key: key);

  @override
  State<passwdPage> createState() => _passwdPageState();
}

class _passwdPageState extends State<passwdPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar( backgroundColor: const Color(0xFFBC8CF2),
        title: Image.asset('assets/images/campus logo.png',height: 45,),
        centerTitle: true,),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.deepPurple[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Reset Your Password',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white)),
            Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white60),
                labelText: 'Enter Your Email',
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
              ),
            ),
            ),
            ElevatedButton(onPressed: () async {
             await FirebaseAuth.instance.sendPasswordResetEmail(email: controller.text).then((value) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => createAccount()));
              });

            }, child: Text("Reset Password"), style: ElevatedButton.styleFrom(primary: Colors.purple))

          ],

        ),
      ),

    );
  }
}
