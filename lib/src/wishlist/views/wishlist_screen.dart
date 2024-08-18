import 'package:flutter/material.dart';
import 'package:shop/common/services/storage.dart';
import 'package:shop/common/utils/kcolors.dart';
import 'package:shop/common/utils/kstrings.dart';
import 'package:shop/common/widgets/app_style.dart';
import 'package:shop/common/widgets/reusable_text.dart';
import 'package:shop/src/auth/views/login_screen.dart';
import 'package:shop/src/products/widgets/explore_products.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    /*  String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return LoginScreen();
    }
    */
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: ReusableText(
              text: AppText.kWishlist,
              style: appStyle(16, Kolors.kPrimary, FontWeight.bold)),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ExploreProducts(),
      ),
    );
  }
}
