import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/ingredientsListView.dart';
import 'package:dailyrecipesflutter/screens/home/tabs/recipes/components/ratingLabel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../../../../../constants.dart';

class ContentDetailCard extends StatefulWidget {
  final String text;
  ContentDetailCard(this.text);

  @override
  _ContentDetailCardState createState() => _ContentDetailCardState(text);
}

class _ContentDetailCardState extends State<ContentDetailCard> with TickerProviderStateMixin {
  final String _text;
  _ContentDetailCardState(this._text);

  ScrollController _hideButtonController;
  bool _isVisible;
  TabController _controller;

  @override
  void initState() {
    super.initState();
     _controller = new TabController(initialIndex: 0, length: 3, vsync: this);
    _isVisible = false;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible == false) {
          setState(() {
            _isVisible = true;
          });
        }
      } else if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isVisible == true) {
          setState(() {
            _isVisible = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return;
        },
        child: Container(
          child: SingleChildScrollView(
            controller: _hideButtonController,
            child: Container(
              color: kBackgroundColor,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Flexible(
                      child: Text(
                        _text,
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      'In Breakfast',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    trailing: RatingLabel(),
                    dense: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile/profile1.jpg'),
                      ),
                      title: Text(
                        'Samuele Giaccone',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: kTextColor,
                        ),
                      ),
                      subtitle: Text(
                        'Nutrition',
                        style: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.normal,
                          color: kSecondaryColor,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            rating: 5,
                            size: 20.0,
                            isReadOnly: true,
                            color: Color(0xFFF6BD0F),
                            borderColor: Color(0xFFF6BD0F),
                            spacing: 0.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 3.0),
                            child: Text(
                              '555 upvoted',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 11.0,
                                color: kSecondaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      dense: true,
                    ),
                  ),
                  /* ############### INGREDIENTS ############### */
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Color(0xFFDCDCDC),
                      borderRadius: BorderRadius.circular(50),
                      child: SizedBox(
                        height: 32.0,
                        child: new TabBar(
                          controller: _controller,
                          unselectedLabelColor: Colors.black,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black
                          ),
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Ingredients',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Tools',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Steps',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    child: TabBarView(
                      controller: _controller,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: IngredientsListView()
                        ),
                        IngredientsListView(),
                        IngredientsListView(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: new Visibility(
        visible: _isVisible,
        child: FloatingActionButton.extended(
          backgroundColor: Color(0xFFF6BD0F),
          onPressed: () {},
          label: Text(
            'Start Cooking!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
