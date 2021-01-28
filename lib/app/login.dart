import 'package:flutter/material.dart';
import 'package:rumahinternet/ProgressHUD.dart';
import 'package:rumahinternet/api/ApiService.dart';
import 'package:rumahinternet/models/LoginModel.dart';
import '../screen/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  LoginRequestModel requestModel;

  bool isApiCallProcess = false;

  @override
  void initState() {
    super.initState();
    requestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSteup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  @override
  Widget _uiSteup(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Form(
        key: globalFormKey,
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.height - 50,
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
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
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (input) => requestModel.email = input,
                    validator: (input) => !input.contains("@")
                        ? "Email id Should be Valid"
                        : null,
                    style: TextStyle(fontSize: 16, fontFamily: "Stanberry"),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
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
                    keyboardType: TextInputType.text,
                    onSaved: (input) => requestModel.password = input,
                    validator: (input) => input.length < 7
                        ? "Password should be more than 7 character"
                        : null,
                    style: TextStyle(fontSize: 16, fontFamily: "Stanberry"),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
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
                    onTap: () {},
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
                  FlatButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 155, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, fontFamily: "Stanberry"),
                      ),
                      onPressed: () {
                        if (validateAndSave()) {
                          setState(() {
                            isApiCallProcess = true;
                          });
                          ApiService apiService = new ApiService();
                          apiService.login(requestModel).then((value) {
                            setState(() {
                              isApiCallProcess = false;
                            });
                            if (value.token.isNotEmpty) {
                              final snackbar = SnackBar(
                                content: Text("LOGIN SUCCESFULL"),
                              );
                              
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ));
                                  scaffoldKey.currentState.showSnackBar(snackbar);
                            } else {
                              final snackbar = SnackBar(
                                content: Text(value.error),
                              );
                              scaffoldKey.currentState.showSnackBar(snackbar);
                            }
                          });
                          print(requestModel.toJson());
                        }
                      }),
                  SizedBox(
                    height: 170,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Copyright © Rumah Internet",
                        style: TextStyle(fontFamily: "Stanberry", fontSize: 14),
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

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
