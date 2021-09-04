import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
      ],
      child: const ShopAppWithProvider(),
    ),
  );
}

class ShopAppWithProvider extends StatelessWidget {
  const ShopAppWithProvider({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShopHomePage(),
    );
  }
}

class ShopHomePage extends StatelessWidget {
  const ShopHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context).products;
    // final products = context.watch<Products>().products;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products App'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: product.length,
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: product[i],
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GridTile(
              child: GestureDetector(
                onTap: () {},
                child: Image.network(
                  // context.watch<Products>().products[i].imageUrl,
                  product[i].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black87,
                title: Text(
                  // context.watch<Products>().products[i].title,
                  product[i].title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
