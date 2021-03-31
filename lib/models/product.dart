import 'package:flutter/foundation.dart';

class Product {
  final String id;
  final double price;
  final String title;
  final String description;
  final String imageUrl;
  bool isFavourite = false;

  Product({
    @required this.id,
    this.isFavourite,
    @required this.description,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
  });
}
