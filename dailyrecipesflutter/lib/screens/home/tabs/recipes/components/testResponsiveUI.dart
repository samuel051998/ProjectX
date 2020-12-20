import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _heightFactorAnimation;
  double collapsedHeightFactor = 0.80;
  double expandedHeightFactor = 0.67;
  bool isAnimationCompleted = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _heightFactorAnimation =
        Tween<double>(begin: 0.80, end: 0.67).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  onBottomPartTap() {
    setState(() {
      if (isAnimationCompleted) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      isAnimationCompleted = !isAnimationCompleted;
    });
  }

  Widget getWidget() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        FractionallySizedBox(
          alignment: Alignment.topCenter,
          heightFactor: _heightFactorAnimation.value,
          child: Image.asset(
            'assets/images/card1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        GestureDetector(
          onTap: () {
            onBottomPartTap();
          },
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 1.05 - _heightFactorAnimation.value,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))
              ),
              color: Colors.orange,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, widget) {
          return getWidget();
        },
      ),
    );
  }
}
