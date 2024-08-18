import 'package:shop/common/services/storage.dart';
import 'package:shop/common/utils/kcolors.dart';
import 'package:shop/common/utils/kstrings.dart';
import 'package:shop/common/widgets/app_style.dart';
import 'package:shop/common/widgets/custom_button.dart';
import 'package:shop/common/widgets/reusable_text.dart';
import 'package:shop/const/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

Future<dynamic> logoutBottomSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        decoration: BoxDecoration(borderRadius: kRadiusTop),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: AppText.kLogout,
                    style: appStyle(16, Kolors.kPrimary, FontWeight.w500))),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              color: Kolors.kGrayLight,
              thickness: 0.5.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: ReusableText(
                    text: AppText.kLogoutText,
                    style: appStyle(14, Kolors.kGray, FontWeight.w500))),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GradientBtn(
                    text: "Cancel",
                    borderColor: Kolors.kDark,
                    btnColor: Kolors.kWhite,
                    onTap: () => Navigator.pop(context),
                    btnHieght: 35.h,
                    radius: 16,
                    btnWidth: ScreenUtil().screenWidth / 2.2,
                  ),
                  GradientBtn(
                    text: "Yes, Logout",
                    onTap: () {
                      //Storage().removeKey('accessToken');
                      //context.read<TabIndexNotifier>().tabIndex = 0;
                      //context.go("/home");
                      // context.pop();
                    },
                    btnHieght: 35.h,
                    radius: 16,
                    btnWidth: ScreenUtil().screenWidth / 2.2,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  );
}
