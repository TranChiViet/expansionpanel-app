import 'package:expansionpanel_app/product_cart_item.dart';
import 'package:flutter/material.dart';

import 'models/shop.dart';

class Screen extends StatelessWidget {
  const Screen({
    Key? key,
    required this.shopsList,
  }) : super(key: key);

  final List<Shop> shopsList;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansionpanel App'),
        centerTitle: true,
      ),
      body: ListView(
        children: shopsList.map((shop) {
          return _buildExpansionTile(shop);
        }).toList(),
        ),
    );
  }

  ExpansionTile _buildExpansionTile(Shop shop) {
    return ExpansionTile(
    title: Text(shop.name),
    children: shop.products.map((product) {
      return ProductCartItem(product);
    }).toList(),
  );
  }
}
