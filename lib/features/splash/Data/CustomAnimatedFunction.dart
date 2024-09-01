import 'package:flutter/animation.dart';

class CustomAnimated{
  void initSlidingAnimation({
    required Function(AnimationController) onControllerInit,
    required TickerProvider thisVsync,
    required Duration duration,
    required Offset beginOffset,
    required Offset endOffset,
    required Function(Animation<Offset>) onAnimationUpdate,
  }) {
    // Create the animation controller and return it via the callback
    final controller = AnimationController(
      vsync: thisVsync, // TickerProvider
      duration: duration, // Custom Animation duration
    );
    onControllerInit(controller);

    // Define the tween animation: from custom begin offset to custom end offset
    final animation = Tween<Offset>(
      begin: beginOffset, // Custom start offset
      end: endOffset, // Custom end offset
    ).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );

    // Start the animation when the screen is loaded
    controller.forward();

    // Pass the animation back through the callback
    onAnimationUpdate(animation);
  }
}





