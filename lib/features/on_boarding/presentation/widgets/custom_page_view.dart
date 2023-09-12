import 'package:flutter/cupertino.dart';
import 'package:fruits_market/features/on_boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: const [
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your place',
        ),
      ],
    );
  }
}