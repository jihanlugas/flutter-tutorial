import 'package:flutter/material.dart';
import 'package:state_management_provider/providers/pruducts.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)?.settings.arguments as String; // is the id!

    final product = Provider.of<Products>(context).findById(productId);

    return Scaffold(
        appBar: AppBar(
          title: Text(product.title.toString()),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                product.imageUrl.toString(),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              product.title.toString(),
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              product.description.toString(),
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "\$${product.price.toString()}",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ));
  }
}
