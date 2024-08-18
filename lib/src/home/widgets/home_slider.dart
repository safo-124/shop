import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop/common/utils/kcolors.dart';
import 'package:shop/common/utils/kstrings.dart';
import 'package:shop/common/widgets/app_style.dart';
import 'package:shop/common/widgets/custom_button.dart';
import 'package:shop/common/widgets/reusable_text.dart';
import 'package:shop/const/constants.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: kRadiusAll,
      child: Stack(
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight * 0.16,
            width: ScreenUtil().screenWidth,
            child: ImageSlideshow(
              indicatorColor: Kolors.kPrimaryLight,
              onPageChanged: (p) {},
              autoPlayInterval: 5000,
              isLoop: true,
              children: List.generate(images.length, (i) {
                return CachedNetworkImage(
                  placeholder: placeholder,
                  errorWidget: errorWidget,
                  imageUrl: images[i],
                  fit: BoxFit.cover,
                );
              }),
            ),
          ),
          Positioned(
            child: SizedBox(
              height: ScreenUtil().screenHeight * 0.16,
              width: ScreenUtil().screenWidth,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: AppText.kCollection,
                      style: appStyle(20, Kolors.kDark, FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Discount 50% off \non the first transction',
                      style: appStyle(
                          14, Kolors.kDark.withOpacity(0.6), FontWeight.normal),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    GradientBtn(
                      text: "Shop Now",
                      btnWidth: 150.w,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<String> images = [
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FAfrican_textiles&psig=AOvVaw2MuqflCmacRiH_6I5rGpHB&ust=1723479691332000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJDPzqis7YcDFQAAAAAdAAAAABAE',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Ffashion-shoes-sneakers_1203-7529.jpg%3Fsize%3D626%26ext%3Djpg%26ga%3DGA1.1.2008272138.1723161600%26semt%3Dais_hybrid&tbnid=0a5iZWtSSeqQcM&vet=1&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Fphotos%2Fshoes&docid=bartVi-17alD4M&w=626&h=417&hl=en-US&source=sh%2Fx%2Fim%2Fm1%2F4&kgs=e43cb9b65160758e&shem=abme%2Ctrie',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Ffashion-shoes-sneakers_1203-7529.jpg%3Fsize%3D626%26ext%3Djpg%26ga%3DGA1.1.2008272138.1723161600%26semt%3Dais_hybrid&tbnid=0a5iZWtSSeqQcM&vet=1&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Fphotos%2Fshoes&docid=bartVi-17alD4M&w=626&h=417&hl=en-US&source=sh%2Fx%2Fim%2Fm1%2F4&kgs=e43cb9b65160758e&shem=abme%2Ctrie',
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Ffashion-shoes-sneakers_1203-7529.jpg%3Fsize%3D626%26ext%3Djpg%26ga%3DGA1.1.2008272138.1723161600%26semt%3Dais_hybrid&tbnid=0a5iZWtSSeqQcM&vet=1&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Fphotos%2Fshoes&docid=bartVi-17alD4M&w=626&h=417&hl=en-US&source=sh%2Fx%2Fim%2Fm1%2F4&kgs=e43cb9b65160758e&shem=abme%2Ctrie',
];
