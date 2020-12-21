import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/material.dart';

class DetailCard extends StatefulWidget {
  final String imagePath;
  final String text;
  DetailCard(this.imagePath, this.text);

  @override
  _DetailCardState createState() => _DetailCardState(imagePath, text);
}

class _DetailCardState extends State<DetailCard>
    with SingleTickerProviderStateMixin {
  final String _imagePath;
  final String _text;
  _DetailCardState(this._imagePath, this._text);

  AnimationController _controller;
  Animation<double> _heightFactorAnimation;
  double collapsedHeightFactor = 0.65;
  double expandedHeightFactor = 0.40;
  bool isAnimationCompleted = false;
  double screenHeight = 0;
  Color clr = Colors.white;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    _heightFactorAnimation =
        Tween<double>(begin: collapsedHeightFactor, end: expandedHeightFactor)
            .animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget getWidget() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: _heightFactorAnimation.value,
          child: Hero(
            child: Image(
              image: AssetImage(_imagePath),
              colorBlendMode: BlendMode.modulate,
              color: clr,
              fit: BoxFit.cover,
            ),
            tag: _text,
          ),
        ),
        GestureDetector(
          onVerticalDragUpdate: _handleVerticalUpdate,
          onVerticalDragEnd: _handleVerticalEnd,
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 1.05 - _heightFactorAnimation.value,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 55.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      0,
                      20.0,
                    )              
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(
                        'Oats with Mango Slice\nand Cream',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
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
                      trailing: Container(
                        width: 60.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xFFF6BD0F),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: kTextColor,
                              size: 18.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3.0),
                              child: Text(
                                '4.9',
                                style: TextStyle(
                                  color: kTextColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      dense: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  _handleVerticalUpdate(DragUpdateDetails updateDetails) {
    double fractionDragged = updateDetails.primaryDelta / screenHeight;
    _controller.value = _controller.value - 5 * fractionDragged;
  }

  _handleVerticalEnd(DragEndDetails endDetails) {
    if (_controller.value >= 0.5) {
      _controller.fling(velocity: 1);
      clr = Color(0xFFD3D3D3);
    } else {
      _controller.fling(velocity: -1);
      clr = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, widget) {
          return getWidget();
        },
      ),
    );
  }
}
