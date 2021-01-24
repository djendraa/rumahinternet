import 'package:flutter/material.dart';
import '../screen/home.dart';

class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.height - 50,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget> [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/rumahinternet.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Stanberry"
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        size: 20,
                        color: Colors.black,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Stanberry"
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 20,
                        color: Colors.black,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: (){
                      
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password ?",
                            style: TextStyle(fontFamily: "Stanberry"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 155, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Stanberry"
                      ),
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                    }),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have Account? ",
                      style: TextStyle(fontFamily: "Stanberry"),
                      ),
                    GestureDetector(
                      onTap: (){
                         
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text("Create new one", style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: "Stanberry",
                          decoration: TextDecoration.underline
                        ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 135,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Copyright © Rumah Internet",
                      style: TextStyle(
                        fontFamily: "Stanberry",
                        fontSize: 14
                        ),
                      ),
                    ],
                  ) 
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}