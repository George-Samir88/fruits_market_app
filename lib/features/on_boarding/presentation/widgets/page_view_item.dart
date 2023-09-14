import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

import '../../../../core/utils/custom_sized_box.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(25.0),
        SizedBox(
            height: SizeConfig.screenDefaultSize! * 17,
            child: Image.asset(image)),
        const VerticalSpace(3),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20.0,
            color: Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1.5),
        Text(
          subTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
