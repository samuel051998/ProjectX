import 'package:dailyrecipesflutter/constants.dart';
import 'package:dailyrecipesflutter/screens/login/components/imageFullScreenWidget.dart';
import 'package:flutter/material.dart';

import 'loginButtonEmail.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ImageFullScreenWidget(),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Welcome to Daily Recipe App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 32),
                    child: Text(
                      'Cook new dishes, share then with friends, make your loved ones happy!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  LoginButtonEmail(),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 32.0),
                    child: LoginButtonEmail(),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have account? ',
                      style: DefaultTextStyle.of(context).style,
                      children: <Button>[
                        Link(
                          text: 'Log In',
                        )
                      ]
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}