import 'package:flutter/material.dart';
import 'package:shop_app/screens/productOverviewScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductOverviewScreen(),
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
      },
    );
  }
}
