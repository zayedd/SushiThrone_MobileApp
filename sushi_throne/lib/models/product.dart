import 'package:flutter/material.dart';



class Product {
  final String? image, name, description;
  final double? price;
  final int? id;
 
  Product({
    this.id,
    this.image,
    this.name,
    this.price,
    this.description,

  });


  static List<Product> fetch() {
  return [
  Product(
      id: 0,
      name: "Salmon",
      price: 234,
      description: "zzz",
      image: "images/salmon.jpeg",
      
  ),
  Product(
      id: 1,
      name: "Salmon",
      price: 234,
      description: "zzz",
      image: "assets/images/salmon.jpeg",
      
  ),
  Product(
      id: 2,
      name: "Salmon",
      price: 234,
      description: "zzz",
      image: "assets/images/salmon.jpeg",
      
  ),
  Product(
      id: 3,
      name: "Salmon",
      price: 234,
      description: "zzz",
      image: "assets/images/salmon.jpeg",
      
     ),
   ];
  }
}