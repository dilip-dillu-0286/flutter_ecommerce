import 'package:ecommerce/product.dart';
import 'package:flutter/material.dart';

class cart {
  final Product? product;
  final int? noOfitems;
  cart({this.noOfitems, this.product});
}

List<cart> democarts = [
  cart(product: demoProducts[0], noOfitems: 2),
  cart(product: demoProducts[1], noOfitems: 1),
  cart(product: demoProducts[3], noOfitems: 3)
];
