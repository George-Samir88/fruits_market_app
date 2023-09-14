import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/general_button.dart';
import 'package:fruits_market/features/auth/presentation/pages/login/login_view.dart';
import 'package:fruits_market/features/on_boarding/presentation/widgets/custom_dots_indicator.dart';
import 'package:fruits_market/features/on_boarding/presentation/widgets/custom_page_view.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.screenDefaultSize! * 24,
          right: 0,
          left: 0,
          child: CustomDotsIndicator(
            position: hasClientsChecker() ? pageController.page : 0,
          ),
        ),
        Visibility(
          visible: hasClientsChecker()
              ? (pageController.page == 2 ? false : true)
              : true,
          child: Positioned(
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
        ),
        Positioned(
          bottom: SizeConfig.screenDefaultSize! * 10,
          right: SizeConfig.screenDefaultSize! * 10,
          left: SizeConfig.screenDefaultSize! * 10,
          child: GeneralButton(
            text: hasClientsChecker()
                ? (pageController.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
            onTap: () {
              if (pageController.page == 2) {
                Get.to(
                  const LoginView(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 600),
                );
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                );
              }
            },
          ),
        ),
      ],
    );
  }

  bool hasClientsChecker() {
    if (pageController.hasClients) {
      return true;
    } else {
      return false;
    }
  }
}
