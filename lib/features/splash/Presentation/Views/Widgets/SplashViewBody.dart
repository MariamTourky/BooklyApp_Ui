import 'package:bookly_mvvm/core/utils/AppRouter.dart';
import 'package:bookly_mvvm/core/utils/Assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../home/Presentation/Views/HomeView.dart';
import '../../../Data/CustomAnimatedFunction.dart';
import 'AnimatedSlidingText.dart'; // Needed for animations

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _textAnimationController;
  late Animation<Offset> _textAnimation;
  late AnimationController _imageAnimationController;
  late Animation<Offset> _imageAnimation;

  @override
  void initState() {
    super.initState();
   CustomAnimated().initSlidingAnimation(
      onControllerInit: (controller) {
        _textAnimationController = controller;
      },
      thisVsync: this,
      duration: Duration(seconds: 2),
      beginOffset: const Offset(-20, 0),
      endOffset: Offset.zero,
      onAnimationUpdate: (animation) {
        _textAnimation = animation;
      },
    );

    CustomAnimated().initSlidingAnimation(
      onControllerInit: (controller) {
        _imageAnimationController = controller;
      },
      thisVsync: this,
      duration: Duration(seconds: 2),
      beginOffset: const Offset(20, 0),
      endOffset: Offset.zero,
      onAnimationUpdate: (animation) {
        _imageAnimation = animation;
      },
    );


    navigateToHome();
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    _imageAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
          position: _imageAnimation,
          child: SvgPicture.asset(
            AssetsData.logo,
            width: 50,
            height: 60,
          ),
        ),
        const SizedBox(height: 20),
        AnimatedSlidingText(animation: _textAnimation),
      ],
    );
  }


  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        GoRouter.of(context).push(AppRouter.homeViewRouter);
        // Get.to(() => const HomeView(),
        //     transition: Transition.fade,
        //     duration: const Duration(seconds: 2)); // Ensure this Duration is also marked as const
      },
    );
  }


}




