import 'package:dailyrecipesflutter/constants.dart';
import 'package:flutter/foundation.dart';
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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
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
              fit: BoxFit.cover,
            ),
            tag: _text,
          ),
        ),
        GestureDetector(
          onTap: () {},
          onVerticalDragUpdate: _handleVerticalUpdate,
          onVerticalDragEnd: _handleVerticalEnd,
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 1.05 - _heightFactorAnimation.value,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
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
    } else {
      _controller.fling(velocity: -1);
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
