import 'package:flutter/material.dart';
import 'package:alphabet_list_scroll_view/alphabet_list_scroll_view.dart';


class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFBC8CF2),
          title: Image.asset('assets/images/campus logo.png',height: 45,),
          centerTitle: true,

        ),
        body: arama());
  }
}


class arama extends StatefulWidget {
  const arama({Key? key}) : super(key: key);

  @override
  State<arama> createState() => _aramaState();
}

class _aramaState extends State<arama> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
        height: screenSize.height,
        color: Colors.deepPurple[300],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),

                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white60),
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
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Search..',
                      labelText: 'Search',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child:
                Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(top: 15),
                     child: MaterialButton(
                       onPressed: (){ },
                       child: Container(
                        decoration:
                        BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
                        height: 50,
                        width: 350,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("BTT",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                            ),
                          ],
                        ),
                  ),
                     ),
                   ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: MaterialButton(
                      onPressed: (){ },
                      child: Container(
                        decoration:
                        BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
                        height: 50,
                        width: 350,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("ESN Selcuk",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: MaterialButton(
                      onPressed: (){ },
                      child: Container(
                        decoration:
                        BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
                        height: 50,
                        width: 350,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("Matematik Toplulugu",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: MaterialButton(
                      onPressed: (){ },
                      child: Container(
                        decoration:
                        BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
                        height: 50,
                        width: 350,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("BlockChain Toplulugu",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: MaterialButton(
                      onPressed: (){ },
                      child: Container(
                        decoration:
                        BoxDecoration( borderRadius: BorderRadius.circular(20),color: Colors.white,border: Border.all(color: Colors.black,width: 1)),
                        height: 50,
                        width: 350,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("Siber Guvenlik Toplulugu",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Container(
    child: Padding(
      padding: const EdgeInsets.only(left: 250),
      child: Container(
      decoration: BoxDecoration(
      border: Border.all(width: 2, color: Colors.black),
      shape: BoxShape.circle,
      ),
      height: screenSize.height * 0.2,
      width: screenSize.width * 0.2,
        child: IconButton(
          icon: Icon(
            Icons.message,size: 40,
          ),
          onPressed: () {},
        ),
      ),
    ),
    ),
                ],
              ),
              ),
            ],

          ),
        ),

    );
  }
}

