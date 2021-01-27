import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_boarding/models/onboarding_item.dart';
import 'package:on_boarding/utils/app_colors.dart';

class OnBoarding extends StatelessWidget {
  final OnBoardingItem onBoardingItem;

  const OnBoarding({Key key, @required this.onBoardingItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(onBoardingItem.image),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              onBoardingItem.title,
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            onBoardingItem.content,
            style: GoogleFonts.openSans(
              color: AppColor.grey,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
