import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/Assets.dart';

class AnimatedSlidingImage extends StatelessWidget {
  const AnimatedSlidingImage({
    super.key,
    required Animation<Offset> imageanimation,
  }) : _imageanimation = imageanimation;

  final Animation<Offset> _imageanimation;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _imageanimation,
      child: SvgPicture.asset(
        AssetsData.logo,
        width: 50,
        height: 60,
      ),
    );
  }
}
