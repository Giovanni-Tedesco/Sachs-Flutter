import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final dbReference = Firestore.instance;

  void getData() {
    dbReference.collection("clubs").getDocuments()
    .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('${f.data}}'));
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            dbReference.collection("clubs").getDocuments()
            .then((QuerySnapshot snapshot) {
              snapshot.documents.forEach((f) => print('${f.data}}'));
            });
          },
        )
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
