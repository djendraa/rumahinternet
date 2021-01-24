import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Form(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.height - 50,
          child: Column(
            children: <Widget> [
              Column(
                children: <Widget> [
                  Container(
                    color: Colors.red,
                    height: 175,
                    child: Column(
                      children: <Widget> [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Stack(children: <Widget> [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Container(
                                  width: 120.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: ExactAssetImage('assets/as.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 85, right: 100),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget> [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 17,
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget> [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 15),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget> [
                                  Text(
                                    'PERSONAL INFORMATION',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Stanberry',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget> [
                              Column(
                                children: <Widget> [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Stanberry',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget> [
                              Flexible(
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Stanberry'
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter Name",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget> [
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Stanberry',
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                              children: <Widget> [
                                Flexible(
                                  child: TextFormField(
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Stanberry'
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "Enter Address"
                                ),      
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 8),
                        child: Row(
                          children: <Widget> [
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Birth',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Stanberry'
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'City',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Stanberry'
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25),
                        child: Row(
                          children: <Widget> [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: TextFormField(
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Stanberry'
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter Birth"
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                            Flexible(
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Stanberry'
                                ),
                                decoration: InputDecoration(
                                  hintText: "Enter City"
                                ),  
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            Column(
                              children: <Widget> [
                                Text(
                                  'Mobile Number',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Stanberry'
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            Flexible(
                              child: TextFormField(
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Stanberry'
                                ),
                              decoration: InputDecoration(
                                hintText: "Enter Mobile Number"
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            Column(
                              children: <Widget> [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Stanberry'
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            Flexible(
                              child: TextFormField(
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Stanberry'
                                ),
                              decoration: InputDecoration(
                                hintText: "Enter Email"
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            Column(
                              children: <Widget> [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Stanberry'
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget> [
                            Flexible(
                              child: TextFormField(
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Stanberry'
                                ),
                              decoration: InputDecoration(
                                hintText: "Enter Password"
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25, right: 25, top: 25),
                        child: Row(
                          children: <Widget> [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  child: RaisedButton(
                                    child: Text(
                                    "Save",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Stanberry',
                                      ),
                                    ),
                                    textColor: Colors.white,
                                    color: Colors.green,
                                    onPressed: () {
                  
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Container(
                                  child: RaisedButton(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Stanberry'
                                        ),
                                      ),
                                      textColor: Colors.white,
                                      color: Colors.red,
                                      onPressed: () {
                  
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  flex: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}