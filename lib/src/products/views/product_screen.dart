import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';
import 'package:shop/common/services/storage.dart';
import 'package:shop/common/utils/kcolors.dart';
import 'package:shop/common/utils/kstrings.dart';
import 'package:shop/common/widgets/app_style.dart';
import 'package:shop/common/widgets/back_button.dart';
import 'package:shop/common/widgets/error_modal.dart';
import 'package:shop/common/widgets/login_bottom_sheet.dart';
import 'package:shop/common/widgets/reusable_text.dart';
import 'package:shop/const/constants.dart';
import 'package:shop/src/products/controllers/colors_sizes_notifier.dart';
import 'package:shop/src/products/controllers/product_notifier.dart';
import 'package:shop/src/products/widgets/color_selection_widget.dart';
import 'package:shop/src/products/widgets/expandable_text.dart';
import 'package:shop/src/products/widgets/product_bottom_bar.dart';
import 'package:shop/src/products/widgets/products_sizes.dart';
import 'package:shop/src/products/widgets/similar_products.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');
    return Consumer<ProductNotifier>(
        builder: (context, productNotifier, child) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 320.h,
              collapsedHeight: 65.h,
              floating: false,
              pinned: true,
              leading: const AppBackButton(),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Kolors.kSecondaryLight,
                      child: Icon(
                        AntDesign.heart,
                        color: Kolors.kRed,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background: SizedBox(
                  height: 415.h,
                  child: ImageSlideshow(
                    indicatorColor: Kolors.kPrimaryLight,
                    autoPlayInterval: 15000,
                    isLoop: productNotifier.product!.imageUrls.length > 1
                        ? true
                        : false,
                    children: List.generate(
                        productNotifier.product!.imageUrls.length, (i) {
                      return CachedNetworkImage(
                        placeholder: placeholder,
                        errorWidget: errorWidget,
                        height: 415.h,
                        imageUrl: productNotifier.product!.imageUrls[i],
                        fit: BoxFit.cover,
                      );
                    }),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      text: productNotifier.product!.clothesTypes.toUpperCase(),
                      style: appStyle(13, Kolors.kGray, FontWeight.w600),
                    ),
                    Row(
                      children: [
                        const Icon(
                          AntDesign.star,
                          color: Kolors.kGold,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        ReusableText(
                          text: productNotifier.product!.ratings
                              .toStringAsFixed(1),
                          style: appStyle(13, Kolors.kGray, FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                    text: productNotifier.product!.title,
                    style: appStyle(16, Kolors.kDark, FontWeight.w600)),
              ),
            ),
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpandableText(text: productNotifier.product!.description),
            )),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Divider(
                  thickness: 0.5.w,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                  text: "Select Sizes",
                  style: appStyle(14, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ProductsSizes(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                  text: "Select Color",
                  style: appStyle(14, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ColorSelectionWidget(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ReusableText(
                  text: "Similar Products",
                  style: appStyle(14, Kolors.kDark, FontWeight.w600),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10.h,
              ),
            ),
            const SliverToBoxAdapter(child: SimilarProducts()),
          ],
        ),
        bottomNavigationBar: ProductBottomBar(
          onPressed: () {
            if (accessToken == null) {
              loginBottomSheet(context);
            } else {
              if (context.read<ColorsSizesNotifier>().color == '' ||
                  context.read<ColorsSizesNotifier>().sizes == '') {
                showErrorPopup(context, AppText.kCartErrorText,
                    "Error Adding to Cart", true);
              } else {
                //TODO: Cart;
              }
            }
          },
          price: productNotifier.product!.price.toStringAsFixed(2),
        ),
      );
    });
  }
}
