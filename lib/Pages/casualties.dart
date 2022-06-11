import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';
import 'package:projectsid/Pages/home.dart';
import 'functions.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class casualtiesData extends StatefulWidget {
  casualtiesData({Key? key}) : super(key: key);

  @override
  State<casualtiesData> createState() => _casualtiesDataState();
}

class _casualtiesDataState extends State<casualtiesData> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    CollectionReference musicInfo = _firestore.collection('casualties');
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: Color.fromARGB(255, 1, 0, 26),
      child: StreamBuilder<QuerySnapshot>(
          stream: musicInfo.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            //just add this line
            if (asyncSnapshot.data == null) return CircularProgressIndicator();

            List<DocumentSnapshot> docSnap = asyncSnapshot.data.docs;
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: docSnap.length,
              itemBuilder: (context, index) {
                return Flexible(
                    child: Container(
                      color: Colors.deepPurple[300],
                      width: screenSize.width * 1,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            width: screenSize.width * 0.9,
                            height: 50,
                            child: Row(
                              children: [
                                Flexible(
                                  //margin: EdgeInsets.only(left: 5),
                                    child: Column(children: [
                                      Align(
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text('${docSnap[index]["name"]}',softWrap: true, overflow:TextOverflow.clip,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, color: Colors.black,fontSize: 25),),
                                        ),
                                        alignment: Alignment.center,

                                      ),
                                    ],
                                    ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: screenSize.height * 0.44,
                            width: screenSize.width * 0.9,
                            child: Column(
                              children: [
                                Image.network('${docSnap[index]["url"]}',
                                  fit: BoxFit.fill,
                                  width: screenSize.width-41,
                                  height: 210,),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: MaterialButton(onPressed: (){},
                                          child: CircleAvatar(
                                            child: Icon(
                                              Icons.info,
                                              color: Colors.white,
                                            ),
                                            backgroundColor: Colors.deepPurple,
                                          ),
                                        ),
                                      ),

                                      Container(
                                        child: MaterialButton(onPressed: (){},
                                          child: CircleAvatar(
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                            backgroundColor: Colors.deepPurple,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                );
              },
            );
          }),
    );
  }
}

/*

   MaterialButton(
                    onPressed: () async {
                      var responsive = await anaref.get();
                      var music = responsive;
                      print(music['ad'].toString());
                    },
                    child: Text("bass"),
                  )
                    '${docSnap[index]["img"]}',
                  */


class casualPage extends StatefulWidget {
  const casualPage({Key? key}) : super(key: key);

  @override
  State<casualPage> createState() => _casualPageState();
}

class _casualPageState extends State<casualPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: () {Navigator.push(context,
              MaterialPageRoute(builder: (_) => BottomPage()));},),
          backgroundColor: Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,



        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [casualtiesData()],
          ),
        ),
      ),
    );
  }
}
