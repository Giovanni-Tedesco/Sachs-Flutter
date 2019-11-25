import 'package:flutter/material.dart';

import 'main.dart';
import 'LoginPage.dart';
import 'roots/home_page.dart';

class SachsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      title: 'SachsApp',
      home: LoginPage(),
      // home: HomePage(),
    );
  }
}
