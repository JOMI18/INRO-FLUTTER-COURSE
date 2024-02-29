// import 'package:flutter/material.dart';

// class AnimatedComponent extends StatefulWidget {
//   @override
//   _AnimatedComponentState createState() => _AnimatedComponentState();
// }

// class _AnimatedComponentState extends State<AnimatedComponent> {
//   bool _selected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Animated Widget Example'),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           setState(() {
//             _selected = !_selected;
//           });
//         },
//         child: AnimatedContainer(
//           duration: Duration(milliseconds: 500),
//           width: _selected ? 200 : 100,
//           height: _selected ? 200 : 100,
//           color: _selected ? Colors.blue : Colors.red,
//           child: Center(
//             child: Text(
//               _selected ? 'Selected' : 'Not Selected',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/snd');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SndScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: SlideInComponent(),
      ),
    );
  }
}

class SlideInComponent extends StatefulWidget {
  @override
  _SlideInComponentState createState() => _SlideInComponentState();
}

class _SlideInComponentState extends State<SlideInComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Slide In Component',
            style: TextStyle(color: Colors.white),
          ),
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
