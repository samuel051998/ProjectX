import 'package:dailyrecipesflutter/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginButtonEmail extends StatelessWidget {
  const LoginButtonEmail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          minWidth: 375.0,
          height: 50.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          color: kPrimaryColor,
          onPressed: () {
            Navigator.pushNamed(
              context,
              HomeScreen.routeName,
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, //align row content to center
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
              Text(
                'Sign up by Email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}