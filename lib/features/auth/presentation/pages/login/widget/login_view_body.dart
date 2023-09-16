import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_market/constants.dart';
import 'package:fruits_market/core/utils/custom_sized_box.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/general_button.dart';
import 'package:fruits_market/features/auth/presentation/pages/complete_information/complete_info_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(SizeConfig.screenDefaultSize! * 1.1),
        SizedBox(
          height: SizeConfig.screenDefaultSize! * 22,
          child: Image.asset('assets/images/logo.png'),
        ),
        VerticalSpace(SizeConfig.screenDefaultSize! * 0.1),
        const Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 51,
            fontWeight: FontWeight.bold,
            color: kMainColor,
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(
                  text: 'Login with',
                  color: const Color(0xffdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  onTap: () {},
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(
                  color: const Color(0xff426782),
                  text: 'Login with',
                  iconData: FontAwesomeIcons.facebookF,
                  onTap: () {
                    Get.to(
                      const CompleteInfoView(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeft,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }
}
