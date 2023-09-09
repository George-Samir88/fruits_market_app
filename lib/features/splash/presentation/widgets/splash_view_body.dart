import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    animation =
        Tween<double>(begin: 0.2, end: 0.8).animate(animationController);
    animationController.repeat(reverse: true);
    navigateToOnBoardingScreen();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: animation,
          child: const Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
        Image.asset('assets/images/splash_view_image.png'),
      ],
    );
  }

  void navigateToOnBoardingScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.to(
        () => const OnBoardingView(),
        transition: Transition.fade,
      ),
    );
  }
}
