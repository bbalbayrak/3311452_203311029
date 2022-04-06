
import 'package:flutter/material.dart';

class guvenlikAyarlari extends StatelessWidget {
  const guvenlikAyarlari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.teal.shade700)),
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
                blockBuilder("Password Settings"),
                blockBuilder("Saved Login Information"),
                blockBuilder("Security Check"),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
Padding blockBuilder(String blockname) {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: MaterialButton(
      color: Colors.white,
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        width: 310,
        height: 40,
        child: Text(
          blockname,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    ),
  );
}