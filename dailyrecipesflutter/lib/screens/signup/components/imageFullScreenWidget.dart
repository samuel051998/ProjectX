import 'package:flutter/material.dart';

class ImageFullScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: AssetImage('assets/images/imageBG.jpg'),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}