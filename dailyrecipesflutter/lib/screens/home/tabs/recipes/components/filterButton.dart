import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
          color: Color(0xFFF6BD0F),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Icon(
          Icons.filter,
        ),
      ),
    );
  }
}