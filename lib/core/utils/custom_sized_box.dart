import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value, {super.key});

  final double value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenDefaultSize! * value,
    );
  }
}

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.value, {super.key});

  final int value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenDefaultSize! * value,
    );
  }
}
