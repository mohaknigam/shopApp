import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final double price;
  final String title;
  final String description;
  final String imageUrl;
  bool isFavourite;

  Product({
    @required this.id,
    this.isFavourite = false,
    @required this.description,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
  });
  void toggleFavoriteStatus() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}
