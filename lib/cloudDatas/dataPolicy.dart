import 'package:flutter/material.dart';
import 'package:projectsid/Pages/bottomBar.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class policy extends StatefulWidget {
  const policy({Key? key}) : super(key: key);

  @override
  State<policy> createState() => _policyState();
}

class _policyState extends State<policy> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    CollectionReference musicInfo = _firestore.collection('policy');
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      color: const Color.fromARGB(255, 1, 0, 26),
      child: StreamBuilder<QuerySnapshot>(
          stream: musicInfo.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            //just add this line
            if (asyncSnapshot.data == null) return const CircularProgressIndicator();

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
                            margin: const EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: screenSize.height * 0.9,
                            width: screenSize.width * 0.9,
                            child: Column(
                              children: [
                                Text('${docSnap[index]["subject"]}', style: const TextStyle(fontWeight: FontWeight.bold),),
                                Container(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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


class dataPolicyPage extends StatefulWidget {
  const dataPolicyPage({Key? key}) : super(key: key);

  @override
  State<dataPolicyPage> createState() => _dataPolicyPageState();
}

class _dataPolicyPageState extends State<dataPolicyPage> {
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
            children: const [policy()],
          ),
        ),
      ),
    );
  }
}
