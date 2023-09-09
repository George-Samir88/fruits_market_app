import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/general_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.screenDefaultSize! * 10,
          right: 32,
          child: const Text(
            'skip',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff898989),
            ),
          ),
        ),
        Positioned(
          bottom: SizeConfig.screenDefaultSize! * 10,
          right: SizeConfig.screenDefaultSize! * 10,
          left: SizeConfig.screenDefaultSize! * 10,
          child: const GeneralButton(
            text: 'Next',
          ),
        ),
      ],
    );
  }
}
