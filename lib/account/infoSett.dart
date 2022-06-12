
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';
import 'package:projectsid/cloudDatas/dataPolicy.dart';



class infoAbout extends StatefulWidget {
  const infoAbout({Key? key}) : super(key: key);

  @override
  State<infoAbout> createState() => _infoAboutState();
}

class _infoAboutState extends State<infoAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFBC8CF2),
        title: Image.asset('assets/images/campus logo.png',height: 45,),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder: (_) => BottomPage()));},),


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
              onPressed: () {

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const dataPolicyPage()));
              }, child: Container(
              decoration:
              BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
              height: 50,
              width: 300,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.account_circle,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text("Data Policy",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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
                    child: Icon(Icons.security,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text("Terms of Use",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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
                    child: Icon(Icons.info_outline,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text("Open Source Libraries",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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








