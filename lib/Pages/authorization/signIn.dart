import 'package:flutter/material.dart';
import 'package:projectsid/Pages/authorization/createAccount.dart';
import 'package:projectsid/cloudDatas/userData.dart';
import 'package:projectsid/services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return const uyeekrani();
  }
}


class uyeekrani extends StatefulWidget {
  const uyeekrani({Key? key}) : super(key: key);

  @override
  State<uyeekrani> createState() => _uyeekraniState();
}

class _uyeekraniState extends State<uyeekrani> {
  final AuthService _authService = AuthService();
  @override

    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _passwordAgainController =
    TextEditingController();

  //LocalStorage başlangıç kısmı
  setUserName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("userName", UserName);
  }

  getUserName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      UserName = pref.getString("userName")!;
      UserName = "";
    });
  }

  @override
  void initState() {
    super.initState();
    getUserName();
  }


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(


      body: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
          color: Colors.deepPurple[300],
      ),
      child: Center(
      child: SingleChildScrollView(
      child: Column(
      children: <Widget>[
      Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Center(
      child: Container(
      //width: 200,
      //height: 150,
      child: SizedBox(

      child: Image.asset('assets/images/campus logo.png'),width: screenSize.width*0.7,
      height: screenSize.height*0.2,),


          ),
         ),
       ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _nameController,
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),

            decoration: const InputDecoration(
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
              hintText: 'Enter your student number',
              labelText: 'Student Number',
              prefixIcon: Icon(
                Icons.numbers,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _emailController,
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),

            decoration: const InputDecoration(
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
              hintText: '@ogr.selcuk.edu.tr',
              labelText: 'Email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            controller: _passwordController,
            cursorColor: Colors.white,
            style: const TextStyle(color: Colors.white),

            decoration: const InputDecoration(
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
              hintText: 'Enter your password',
              labelText: 'Password',
              prefixIcon: Icon(
                Icons.password,
                color: Colors.white,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 205, 3, 255),
                    Color.fromARGB(255, 74, 5, 99),
                  ],
                  stops: [
                    0.6,
                    0.9,
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  tileMode: TileMode.repeated),
            ),
            child: FlatButton(
              onPressed: () {setState(() {
                UserName = _nameController.text;
              });
              setUserName();


                _authService
                    .createPerson(_nameController.text,
                    _emailController.text, _passwordController.text)
                    .then((value) {

                });
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),



          Container(

            child: Padding(
              padding: const EdgeInsets.only(left: 150,right: 150),
              child: MaterialButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => createAccount()));

              },
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Icon(Icons.arrow_back,size: 15,color: Colors.white,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text("Back",style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  ],
                ),

              ),
            ),
          )
       ]
       ),
       )
       )
      ),
    );
  }
}

