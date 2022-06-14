
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';



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
        backgroundColor: const Color(0xFFBC8CF2),
        title: Image.asset('assets/images/campus logo.png',height: 45,),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: () {Navigator.pop(context);},),


      ),
      body: const background(),
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
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.password,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text("Password Settings",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.login,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("Saved Login Information",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.security_rounded,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text("Security Check",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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








