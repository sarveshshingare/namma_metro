import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPageindicator extends StatelessWidget {
  final PageController controller;

  const MyPageindicator({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      
        controller: controller,
        count: 4,
        effect: SlideEffect(
          spacing: 8.0,
          radius: 30.0,
          dotWidth: 10.0,
          dotHeight: 10.0,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 1.5,
          dotColor:
              Theme.of(context).colorScheme.primaryContainer.withOpacity(0.2),
          activeDotColor: Theme.of(context).colorScheme.primaryContainer,
        ));
  }
}
