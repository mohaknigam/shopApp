import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;

  ProductItem({
    this.title,
    this.id,
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            ProductDetailScreen.routeName,
            arguments: id,
          );
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(
              Icons.favorite,
              size: 20,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            title,
            style: GoogleFonts.lato(),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
