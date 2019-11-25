import 'package:flutter/material.dart';

class Announcement {

  Announcement({
    @required this.title,
    @required this.body,

  }):assert(title != null),
     assert(body != null);
  
  String title;
  String body;

  String get getBody => body;

  String get getTitle => title;

}