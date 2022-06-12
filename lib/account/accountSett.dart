
import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';
import 'package:projectsid/Pages/graf.dart';



class accountSett extends StatefulWidget {
  const accountSett({Key? key}) : super(key: key);

  @override
  State<accountSett> createState() => _accountSettState();
}




class _accountSettState extends State<accountSett> {

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
                    MaterialPageRoute(builder: (_) =>  chartData()));
              }, child: Container(
              decoration:
              BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
              height: 50,
              width: 300,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.info,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text("Account Info",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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
                    child: Icon(Icons.language,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text("Language",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                  ),
                ],
              ),
            ),
            ),
          ),



          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: () {

              }, child: Container(
              decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
              height: 50,
              width: 300,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.delete,size: 30,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: Text("Delete Your Account",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
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








