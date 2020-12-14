import 'package:flutter/material.dart';

import 'components/body.dart';

class ExploreTab extends StatelessWidget {
  static String routeName = '/explore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}