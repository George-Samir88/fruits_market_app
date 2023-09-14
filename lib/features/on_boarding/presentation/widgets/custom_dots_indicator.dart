import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.position});

  final double? position;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: position!.toInt(),
      dotsCount: 3,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        sizes: [
          const Size.square(10.0),
          const Size.square(10.0),
          const Size.square(10.0),
        ],
        activeSizes: [
          const Size.square(15.0),
          const Size.square(15.0),
          const Size.square(15.0),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: kMainColor,
          ),
        ),
      ),
    );
  }
}
