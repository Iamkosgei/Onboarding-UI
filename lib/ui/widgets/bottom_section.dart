import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_boarding/utils/app_colors.dart';

import 'indicators.dart';

class BottomSection extends StatelessWidget {
  final int index;

  const BottomSection({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedContainer(
            duration: Duration(seconds: 1),
            child: Text("${index == 0 ? ' ' : 'Prev'}",
                style: GoogleFonts.openSans(
                    color: AppColor.blue,
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          Container(
            height: 20,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return Indicators(
                    color: i == index ? AppColor.blue : AppColor.lightBlue,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemCount: 3),
          ),
          AnimatedContainer(
            duration: Duration(seconds: 1),
            child: Text(
              "${index == 2 ? 'Done' : 'Next'}",
              style: GoogleFonts.openSans(
                  color: AppColor.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
