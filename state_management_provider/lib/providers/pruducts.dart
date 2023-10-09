import 'dart:math';

import 'package:flutter/material.dart';
import 'package:state_management_provider/providers/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = List.generate(
    25,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Product ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300',
      );
    },
  );

  List<Product> get items {
    return _items;
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  // void addProduct(Product product) {
  //   _items.add(product);
  //   notifyListeners();
  // }
}
