import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/common/utils/kcolors.dart';
import 'package:shop/common/utils/kstrings.dart';
import 'package:shop/common/widgets/app_style.dart';
import 'package:shop/const/resource.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil().scaleWidth,
      height: ScreenUtil().scaleHeight,
      child: Stack(
        children: [
          Image.asset(R.ASSETS_IMAGES_WISHLIST_JPG, fit: BoxFit.cover),
          Positioned(
            bottom: 270,
            left: 30,
            right: 30,
            child: Text(
              "Just Shop With Us",
              textAlign: TextAlign.center,
              style: appStyle(30, Kolors.kPrimary, FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 200,
            left: 30,
            right: 30,
            child: Text(
              AppText.kOnboardWishListMessage,
              textAlign: TextAlign.center,
              style: appStyle(11, Kolors.kGray, FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
