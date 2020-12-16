import 'package:flutter/material.dart';
import 'filterButton.dart';
import 'mySearch.dart';

class SearchRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.0,
      child: Row(
        children: <Widget>[
          MySearch(),
          FilterButton(),
        ],
      ),
    );
  }
}