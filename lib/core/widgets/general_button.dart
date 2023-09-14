import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/custom_sized_box.dart';

import '../../constants.dart';
import '../utils/size_config.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.text, required this.onTap});

  final String? text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key,
      required this.text,
      required this.iconData,
      this.onTap,
      this.color});

  final String text;
  final IconData iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: const Color(0xff707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const HorizontalSpace(2),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  color: Color(0xff000000)),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
