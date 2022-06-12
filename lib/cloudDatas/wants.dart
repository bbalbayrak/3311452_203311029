import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';
import 'functions.dart';

class wantsPage extends StatefulWidget {
  const wantsPage({Key? key}) : super(key: key);

  @override
  State<wantsPage> createState() => _wantsPageState();
}

class _wantsPageState extends State<wantsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: () {Navigator.push(context,
              MaterialPageRoute(builder: (_) => BottomPage()));},),
          backgroundColor: const Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,



        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [wantsData()],
          ),
        ),
      ),
    );
  }
}
