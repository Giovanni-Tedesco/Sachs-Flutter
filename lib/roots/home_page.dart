import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:sachs_app/Classes/Announcement.dart';
import 'package:sachs_app/utils/app_utils.dart';
import 'package:sachs_app/utils/dbAccessor.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final dbReference = Firestore.instance;

  List<Announcement> _announcements = DbAccessor.pullAnnouncements();

  Widget _buildAnnouncements(BuildContext context, int p){
    return Column(
      children: <Widget>[
        Text(
          "${_announcements[p].title}"

        ),
        Text(
          "${_announcements[p].body}"
        )
      ],
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // for(var i = 0; i < _announcements.length; i++){
            //   print(_announcements[i].body);
            // }
            print(_announcements.length);
          },
        ),
      ),
      body: ListView.builder(

        itemCount: _announcements.length,
        itemBuilder: (BuildContext context, int p) {
          return Column(
            
            children: <Widget>[
              Text(_announcements[p].title, style: TextStyle(fontSize: 24)),
              Text(_announcements[p].body)  
            ],
          );
        },
      ),
    );
  }

}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.blue[100]),
    );
  }
}
