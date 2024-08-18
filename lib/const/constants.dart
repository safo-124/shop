import 'package:shop/common/utils/kcolors.dart';
import 'package:shop/const/resource.dart';
//import 'package:shop/src/categories/models/categories_model.dart';
//import 'package:shop/src/products/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:shop/src/categories/models/categories_modal.dart';
import 'package:shop/src/products/models/product_model.dart';

LinearGradient kGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
    Kolors.kPrimary,
  ],
);

LinearGradient kPGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kPrimaryLight.withOpacity(0.7),
    Kolors.kPrimary,
  ],
);

LinearGradient kBtnGradient = const LinearGradient(
  begin: Alignment.bottomLeft,
  end: Alignment.bottomRight,
  colors: [
    Kolors.kPrimaryLight,
    Kolors.kWhite,
  ],
);

BorderRadiusGeometry kClippingRadius = const BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
);

BorderRadiusGeometry kRadiusAll = BorderRadius.circular(12);

BorderRadiusGeometry kRadiusTop = const BorderRadius.only(
  topLeft: Radius.circular(9),
  topRight: Radius.circular(9),
);

BorderRadiusGeometry kRadiusBottom = const BorderRadius.only(
  bottomLeft: Radius.circular(12),
  bottomRight: Radius.circular(12),
);

Widget Function(BuildContext, String)? placeholder = (p0, p1) => Image.asset(
      R.ASSETS_IMAGES_PLACEHOLDER_WEBP,
      fit: BoxFit.cover,
    );

Widget Function(BuildContext, String, Object)? errorWidget =
    (p0, p1, p3) => Image.asset(
          R.ASSETS_IMAGES_PLACEHOLDER_WEBP,
          fit: BoxFit.cover,
        );

List<String> images = [
  "https://as2.ftcdn.net/v2/jpg/02/14/86/77/1000_F_214867711_3D9MQmek2tZSkh3B7YkgJPQRWdcU3dJw.jpg",
  "https://assets.vogue.com/photos/58912b3e85b39596184722a0/master/w_1600%2Cc_limit/african-shoemakers-6.jpg",
  "https://www.artandobject.com/sites/default/files/styles/gallery_item/public/ethiopian-artist-ethiopia-shield-19th-20th-century-brass-cloth-and-animal-hide-collection-drs-john_1.jpg?h=bd50b9c8&itok=jP2SUdpB",
  "https://artmuseum.indiana.edu/collections-online/images/features/african-ceramics/fig-3.JPG",
  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FAfrican_textiles&psig=AOvVaw2MuqflCmacRiH_6I5rGpHB&ust=1723479691332000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCJDPzqis7YcDFQAAAAAdAAAAABAE",
];

// [{"title":"Sneakers","id":3,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Frunning_shoe.svg?alt=media&token=0dcb0e57-315e-457c-89dc-1233f6421368"},{"title":"T-Shirts","id":5,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjersey.svg?alt=media&token=6ca7eabd-54b3-47bb-bb8f-41c3a8920171"},{"title":"Jackets","id":4,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjacket.svg?alt=media&token=ffdc9a1e-917f-4e8f-b58e-4df2e6e8587e"},{"title":"Dresses","id":2,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fdress.svg?alt=media&token=cf832383-4c8a-4ee1-9676-b66c4d515a1c"},{"title":"Pants","id":1,"imageUrl":"https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Fjeans.svg?alt=media&token=eb62f916-a4c2-441a-a469-5684f1a62526"}]

List<Categories> categories = [
  Categories(
      title: "WoodWorks",
      id: 1,
      imageUrl:
          "https://png.pngtree.com/png-vector/20190217/ourmid/pngtree-woodworking-gear-logo-design-template-vector-element-png-image_555246.jpg"),
  Categories(
      title: "Textiles",
      id: 5,
      imageUrl: "https://static.thenounproject.com/png/3961065-200.png"),
  Categories(
      title: "Leathers",
      id: 3,
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkY8dHi7QhegJ4t5Kq7idlKnRrk1pOisOnqA&s"),
  Categories(
      title: "Ceremics",
      id: 2,
      imageUrl: "https://cdn-icons-png.flaticon.com/512/360/360040.png"),
  Categories(
      title: "Beads",
      id: 4,
      imageUrl: "https://cdn-icons-png.flaticon.com/512/1958/1958374.png"),
];

/*var products = [
  {
    "id": 3,
    "title": "Converse Chuck Taylor All Star",
    "price": 60.0,
    "description":
        "The classic Chuck Taylor All Star sneaker from Converse, featuring a timeless design and comfortable fit.",
    "is_featured": true,
    "clothesType": "kids",
    "ratings": 4.333333333333333,
    "colors": ["black", "white", "red"],
    "imageUrls": [
      "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
      "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
    ],
    "sizes": ["7", "8", "9", "10", "11"],
    "created_at": "2024-06-06T07:57:45Z",
    "category": 3,
    "brand": 1
  },
  {
    "id": 1,
    "title": "LV Trainers",
    "price": 798.88,
    "description":
        "LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium materials, and comfortable designs that elevate your everyday look with a touch of luxury.",
    "is_featured": true,
    "clothesType": "women",
    "ratings": 4.5,
    "colors": ["white", "black", "red"],
    "imageUrls": [
      "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
      "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
    ],
    "sizes": ["7", "8", "9", "10", "11"],
    "created_at": "2024-06-06T07:49:15Z",
    "category": 3,
    "brand": 1
  },
  {
    "id": 2,
    "title": "Adidas Ultraboost",
    "price": 180.0,
    "description":
        "xperience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
    "is_featured": true,
    "clothesType": "unisex",
    "ratings": 5.0,
    "colors": ["navy", "grey", "blue"],
    "imageUrls": [
      "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp",
      "https://media.cnn.com/api/v1/images/stellar/prod/220210051008-04-lv-virgil-abloh.jpg?q=w_2000,c_fill/f_webp"
    ],
    "sizes": ["7", "8", "9", "10", "11"],
    "created_at": "2024-06-06T07:55:20Z",
    "category": 3,
    "brand": 1
  }
]; */

List<Products> products = [
  Products(
      id: 3,
      title: "LEATHER SHOES",
      price: 60.0,
      description:
          "The classic Chuck Taylor All Star sneaker from Converse, featuring a timeless design and comfortable fit.",
      isFeatured: true,
      clothesTypes: "kids",
      ratings: 4.333333333333333,
      colors: ["black", "white", "red"],
      imageUrls: [
        "https://bellafricana.com/wp-content/uploads/2015/02/Kente-Ghanaian-textile-obi-to-err-is-human-bellafricana.jpeg",
        "https://bellafricana.com/wp-content/uploads/2015/02/Kente-Ghanaian-textile-obi-to-err-is-human-bellafricana.jpeg",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:57:45Z"),
      category: 3,
      brand: 1),
  Products(
      id: 1,
      title: "KENTE",
      price: 798.88,
      description:
          "LV Trainers blend sleek style with athletic functionality, featuring bold logos, premium materials, and comfortable designs that elevate your everyday look with a touch of luxury. sjsjfsdkmgsgsm  ksdlfndsfjkl nsz ljknsdfljn sdlfjnsdxn lsdxnlf sfl nsdfnl sdfns nzfsdnlf snl sdnlfnl",
      isFeatured: true,
      clothesTypes: "women",
      ratings: 4.5,
      colors: ["white", "black", "red"],
      imageUrls: [
        "https://cdn.theculturetrip.com/wp-content/uploads/2018/09/kente_kumasi_2010-06-30.jpg",
        "https://cdn.theculturetrip.com/wp-content/uploads/2018/09/kente_kumasi_2010-06-30.jpg",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:49:15Z"),
      category: 3,
      brand: 1),
  Products(
      id: 2,
      title: "FUGU",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://media.thepeakmagazine.com.sg/public/2023/05/Batik-FI.jpg?dpr=1.0&q=70&compress=true&quality=80&w=1080",
        "https://media.thepeakmagazine.com.sg/public/2023/05/Batik-FI.jpg?dpr=1.0&q=70&compress=true&quality=80&w=1080",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 4,
      title: "Pot",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://c8.alamy.com/comp/FKKXCE/water-pot-yoruba-early-20th-century-llorin-nigeria-west-africa-FKKXCE.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEhkvNi8C0Dnf4JBBKJnNBThGaF5dJYkgH5A&s",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 5,
      title: "Ring",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://www.afrogem.co.za/cdn/shop/files/IMG_8995Big5ReliefRingwithRoseGoldBordersLR1_1024x1024.jpg?v=1711287830",
        "https://www.afrogem.co.za/cdn/shop/files/IMG_8995Big5ReliefRingwithRoseGoldBordersLR1_1024x1024.jpg?v=1711287830",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 6,
      title: "Metal Gate",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyPjgDI9s62fKbWT4fdA0aqXNE6c6LW-fqrQ&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyPjgDI9s62fKbWT4fdA0aqXNE6c6LW-fqrQ&s",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 7,
      title: "Basket",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://www.contemporary-african-art.com/images/telephonewire-basket-w-lid.jpg",
        "https://www.contemporary-african-art.com/images/telephonewire-basket-w-lid.jpg",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 8,
      title: "Hat",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT00qUSx6r3dOOqLncn-NqsQ9nRqnyi5SFu0g&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT00qUSx6r3dOOqLncn-NqsQ9nRqnyi5SFu0g&s",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 9,
      title: "Basket Hat",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3evM30CuwjJCoXD_pVLi8eA-EVtquM_DhDw&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3evM30CuwjJCoXD_pVLi8eA-EVtquM_DhDw&s",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
  Products(
      id: 10,
      title: "Bowl",
      price: 180.0,
      description:
          "Experience the comfort and energy return of the Ultraboost, designed for running and everyday wear.",
      isFeatured: true,
      clothesTypes: "traditional",
      ratings: 5.0,
      colors: ["navy", "grey", "blue"],
      imageUrls: [
        "https://mockana.co.za/wp-content/uploads/colourful-unique-african-snack-bowl.jpg",
        "https://mockana.co.za/wp-content/uploads/colourful-unique-african-snack-bowl.jpg",
      ],
      sizes: ["7", "8", "9", "10", "11"],
      createdAt: DateTime.parse("2024-06-06T07:55:20Z"),
      category: 3,
      brand: 1),
];

String avatar =
    'https://firebasestorage.googleapis.com/v0/b/authenification-b4dc9.appspot.com/o/uploads%2Favatar.png?alt=media&token=7da81de9-a163-4296-86ac-3194c490ce15';


// class _buildtextfield extends StatelessWidget {
//   const _buildtextfield({
//     Key? key,
//     required this.hintText,
//     required this.controller,
//     required this.onSubmitted,
//     this.keyboard,
//     this.readOnly,
//   }) : super(key: key);

//   final TextEditingController controller;
//   final String hintText;
//   final TextInputType? keyboard;
//   final void Function(String)? onSubmitted;
//   final bool? readOnly;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 20.0),
//       child: TextField(
//           keyboardType: keyboard,
//           readOnly: readOnly ?? false,
//           decoration: InputDecoration(
//               hintText: hintText,
//               errorBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kRed, width: 0.5),
//               ),
//               focusedBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kPrimary, width: 0.5),
//               ),
//               focusedErrorBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kRed, width: 0.5),
//               ),
//               disabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kGray, width: 0.5),
//               ),
//               enabledBorder: const UnderlineInputBorder(
//                 borderSide: BorderSide(color: Kolors.kGray, width: 0.5),
//               ),
//               border: InputBorder.none),
//           controller: controller,
//           cursorHeight: 25,
//           style: appStyle(12, Colors.black, FontWeight.normal),
//           onSubmitted: onSubmitted),
//     );
//   }
// }
