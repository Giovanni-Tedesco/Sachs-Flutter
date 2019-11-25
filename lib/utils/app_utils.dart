import 'package:flutter/material.dart';

class ListCreator<T> extends StatelessWidget {
  List<T> list;
  var helper;

  ListCreator({this.list, this.helper});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int p) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: helper(context, p),
          ),
        );
      },
      padding: EdgeInsets.all(8.0),
      itemCount: list.length,
    );
  }
}