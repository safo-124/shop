import 'package:flutter/material.dart';
import 'package:shop/common/services/storage.dart';
import 'package:shop/src/auth/views/login_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? accessToken = Storage().getString('accessToken');

    if (accessToken == null) {
      return LoginScreen();
    }
    return Scaffold();
  }
}
