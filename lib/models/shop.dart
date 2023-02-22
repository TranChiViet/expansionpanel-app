// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'product.dart';

class Shop {
  final String id;
  final String name;
  final List<Product> products;
  Shop({
    required this.id,
    required this.name,
    required this.products,
  });

  Shop copyWith({
    String? id,
    String? name,
    List<Product>? products,
  }) {
    return Shop(
      id: id ?? this.id,
      name: name ?? this.name,
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory Shop.fromMap(Map<String, dynamic> map) {
    return Shop(
      id: map['id'] as String,
      name: map['name'] as String,
      products: List<Product>.from((map['products'] as List<int>).map<Product>((x) => Product.fromMap(x as Map<String,dynamic>),),),
    );
  }


  String toJson() => json.encode(toMap());

  factory Shop.fromJson(String source) => Shop.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Shop(id: $id, name: $name, products: $products)';

  @override
  bool operator ==(covariant Shop other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      listEquals(other.products, products);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ products.hashCode;
}
