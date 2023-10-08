import 'package:flutter/material.dart';
import 'package:state_management_provider/widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: ProductGrid(),
    );
  }
}
