import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/custom_sized_box.dart';
import 'package:fruits_market/core/widgets/general_button.dart';
import 'package:fruits_market/features/auth/presentation/pages/complete_information/widget/complete_info_item.dart';

class CompleteInfoViewBody extends StatelessWidget {
  const CompleteInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const VerticalSpace(10),
          const CompleteInfoItem(
            text: 'Enter Your email',
          ),
          const VerticalSpace(2),
          const CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          const VerticalSpace(2),
          const CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          const VerticalSpace(5),
          GeneralButton(text: 'Login', onTap: () {}),
        ],
      ),
    );
  }
}
