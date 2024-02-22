import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MyAnimatedWidget extends StatefulWidget {
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: VisibilityDetector(
        key: Key('animated-widget'),
        onVisibilityChanged: (visibilityInfo) {
          if (visibilityInfo.visibleFraction == 1) {
            _controller.forward();
          } else {
            _controller.reverse();
          }
        },
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: Container(
                width: 700,
                height: 700,
                color: Color.fromARGB(255, 230, 7, 208),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "fadeTransition");
                  },
                  child: const Text("FadeTransition"),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
