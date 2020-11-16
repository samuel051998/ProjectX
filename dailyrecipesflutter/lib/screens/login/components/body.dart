import 'package:dailyrecipesflutter/constants.dart';
import 'package:dailyrecipesflutter/screens/login/components/imageFullScreenWidget.dart';
import 'package:flutter/material.dart';

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
                    padding: const EdgeInsets.symmetric(vertical: 32.0),
                    child: Text(
                      'Cook new dishes, share then with friends, make your loved ones happy!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: FlatButton(
                        minWidth: 375.0,
                        height: 50.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        color: kPrimaryColor,
                        onPressed: () {},
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.mail),
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              alignment: Alignment.center,
                              onPressed: () {},
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
                        
                        /*child: RichText(
                          text: TextSpan(
                            children: [                  
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'Sign up with Email',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            ],
                          ),
                        ), */
                      ),
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