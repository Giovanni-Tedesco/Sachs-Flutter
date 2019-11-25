import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:sachs_app/Classes/Announcement.dart';

class DbAccessor {
  
  static List<Announcement> pullAnnouncements() {

    final dbRef = Firestore.instance;
    List<Announcement> ret = <Announcement>[];

    dbRef.collection('Testannouncements').getDocuments()
    .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) {
        Announcement temp = new Announcement(body: f.data['Body'],title: f.data['Title']);
        print(f.data['Body']);
        print(f.data['Title']);
        ret.add(temp);
      });
    });

    return ret;

  }

}