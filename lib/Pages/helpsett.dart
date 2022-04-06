import 'package:flutter/material.dart';
import 'package:projectsid/Pages/privacySett.dart';


class yardimIletisim extends StatelessWidget {
  const yardimIletisim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // bottomNavigationBar: bottomNavigationBar(),
        appBar: AppBar(
          backgroundColor: Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,

        ),
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          color: Colors.deepPurple[300],
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              children: [
                blockBuilder("Report a Problem"),
                blockBuilder("Frequently Asked Questions"),
                blockBuilder("Communication"),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}