import 'package:flutter/material.dart';
import 'package:rumahinternet/models/ProfileModel.dart';
import 'package:rumahinternet/providers/ProfileProviders.dart';

class Coba extends StatefulWidget {
  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {
  List<Profile> nama;
  bool loading = false;
  String id ;
  Future getById() async {
    print("kemari dong");
    final _profileProfider = new ProfileProvider();
    var ajg = await _profileProfider.getById(id);
    setState(() {
      nama = ajg;
      loading = false;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: loading?Container(child: Text("loading")):Container(
        child: Column(
          children: [
            
            TextField(
              onSubmitted:(val)async{
                setState(() {
                  
                  id = val;
                  loading=true;
                });
               await getById();
              } ,
            ),
          ],
        )
      ),
    );
  }


}

