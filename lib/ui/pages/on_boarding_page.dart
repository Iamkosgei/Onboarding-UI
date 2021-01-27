import 'package:flutter/material.dart';
import 'package:on_boarding/ui/widgets/bottom_section.dart';
import 'package:on_boarding/ui/widgets/on_boarding.dart';
import 'package:on_boarding/utils/app_resources.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              onPageChanged: (val) {
                currentIndex = val;
                setState(() {});
              },
              itemCount: AppResources.onBoardingItems.length,
              itemBuilder: (context, index) {
                return OnBoarding(
                  onBoardingItem: AppResources.onBoardingItems[index],
                );
              }),
        ),
        BottomSection(
          index: currentIndex,
        ),
        SizedBox(
          height: 80,
        )
      ],
    ));
  }
}
