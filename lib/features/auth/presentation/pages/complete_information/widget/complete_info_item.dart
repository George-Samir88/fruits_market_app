import 'package:flutter/material.dart';

import '../../../../../../core/utils/custom_sized_box.dart';
import '../../../../../../core/widgets/custom_text_field.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem(
      {super.key,
      required this.text,
      required this.maxLines,
      required this.inputType});

  final String text;
  final int maxLines;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xff0c0b0b),
            fontWeight: FontWeight.w600,
            height: 1.5625,
          ),
          textHeightBehavior:
              const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
        const VerticalSpace(2),
        CustomTextFormField(
          maxLines: maxLines,
          inputType: inputType,
        )
      ],
    );
  }
}
