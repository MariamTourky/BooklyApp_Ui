import 'package:flutter/cupertino.dart';

class AnimatedSlidingText extends StatelessWidget {
  const AnimatedSlidingText({
    super.key,
    required Animation<Offset> animation,
  }) : _animation = animation;

  final Animation<Offset> _animation;

  @override
  Widget build(BuildContext context) {
    // return AnimatedBuilder(          // USE to make only this widget rebuild not the whole page if you use setstate
    //   animation: _animation,
    //   builder: (BuildContext context, _) {
        return  SlideTransition(       // Use SlideTransition to animate the text's position
          position: _animation,  // Pass the animation to SlideTransition
          child: const Text(
            'Read Free Book',
            textAlign: TextAlign.center, // Custom text style
          ),
        );
      }

    // );
  }

