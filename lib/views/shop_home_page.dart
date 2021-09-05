import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/product_view.dart';
import '../models/products.dart';

class ShopHomePage extends StatelessWidget {
  const ShopHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).products;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Products App',
          style: TextStyle(color: Colors.amberAccent),
        ),
      ),
      body: ProductView(products: products),
    );
  }
}
