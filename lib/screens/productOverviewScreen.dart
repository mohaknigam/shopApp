import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> productsList = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers',
        price: 59.99,
        imageUrl:
            'https://mec.imgix.net/medias/sys_master/high-res/high-res/8961234731038/5058987-ASH05.jpg?w=600&h=600&auto=format&q=60&fit=fill&bg=FFF'),
    Product(
        id: 'p3',
        title: 'Yellow Scarf',
        description: 'warm and cozy - exactly what you need for winters',
        price: 19.99,
        imageUrl:
            'https://i.pinimg.com/originals/bd/08/5f/bd085f093b829b7717b4d09028f6e1ac.jpg'),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want',
      price: 49.99,
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/71gkRrWoOfL._SX425_.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: productsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => ProductItem(
          imageUrl: productsList[i].imageUrl,
          title: productsList[i].title,
          id: productsList[i].id,
        ),
      ),
    );
  }
}
