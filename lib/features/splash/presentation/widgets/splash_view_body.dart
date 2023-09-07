import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const Text(
          'Fruit Market',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 51,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        ),
        Image.asset('assets/images/splash_view_image.png'),
      ],
    );
  }
}
