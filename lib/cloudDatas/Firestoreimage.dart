import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class usersData extends StatefulWidget {
  const usersData({Key? key}) : super(key: key);

  @override
  State<usersData> createState() => _usersDataState();
}

class _usersDataState extends State<usersData> {
  final _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //collection düzeyinde veri
    CollectionReference musicInfo = _firestore.collection('Images');
    //document düzeyinde veri
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
              scrollDirection: Axis.horizontal,
              itemCount: docSnap.length,
              itemBuilder: (context, index) {
                return Flexible(
                  child: SizedBox(
                    width: screenSize.width * .9,
                    height: screenSize.height * .3,
                    child: Row(
                      children: [
                        Image.network(
                          '${docSnap[index]["url"]}',
                          fit: BoxFit.fill,
                          width: screenSize.width-44,
                          height: 210,
                        ),

                      ],
                    ),
                  ),
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