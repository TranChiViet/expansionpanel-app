// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';




class Product {
  final String shop;
  final String shopId;
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;
  final List<String> categories;
  const Product({
    required this.shop,
    required this.shopId,
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.categories,
  });

  Product copyWith({
    String? shop,
    String? shopId,
    String? id,
    String? name,
    String? description,
    double? price,
    String? image,
    List<String>? categories,
  }) {
    return Product(
      shop: shop ?? this.shop,
      shopId: shopId ?? this.shopId,
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shop': shop,
      'shopId': shopId,
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'categories': categories,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      shop: map['shop'] as String,
      shopId: map['shopId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      image: map['image'] as String,
      categories: List<String>.from((map['categories'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Product(shop: $shop, shopId: $shopId, id: $id, name: $name, description: $description, price: $price, image: $image, categories: $categories)';
  }

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;
  
    return 
      other.shop == shop &&
      other.shopId == shopId &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.price == price &&
      other.image == image &&
      listEquals(other.categories, categories);
  }

  @override
  int get hashCode {
    return shop.hashCode ^
      shopId.hashCode ^
      id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      image.hashCode ^
      categories.hashCode;
  }
}
