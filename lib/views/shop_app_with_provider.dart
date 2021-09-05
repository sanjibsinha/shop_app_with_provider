import 'package:flutter/material.dart';
import 'shop_home_page.dart';

class ShopAppWithProvider extends StatelessWidget {
  const ShopAppWithProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShopHomePage(),
    );
  }
}
