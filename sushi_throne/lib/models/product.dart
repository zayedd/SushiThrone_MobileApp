import 'package:flutter/material.dart';

// class Product{
//   final String img, name, description;
//   final double price;
//   final int id;

//   Product(this.img, this.name, this.description, this.price, this.id);
// }
//   List<Product> products = [
//   Product(
//       id: 0,
//       name: 'salmon',
//       img: 'images/salmon.jpg',
//       description: 'salmon',
//       price: 5,

//   ),
// ];


class Product {
  final String? image, name, description;
  final double? price;
  final int id;

  Product({
    required this.id,
    this.image,
    this.name,
    this.price,
    this.description,

  });
}

List<Product> products = [
  Product(
      id: 0,
      name: "Salmon",
      price: 234,
      description: dummyText,
      image: "images/salmon.jpeg",
      
  ),
  Product(
      id: 1,
      name: "Salmon",
      price: 234,
      description: dummyText,
      image: "assets/images/salmon.jpeg",
      
  ),
  Product(
      id: 2,
      name: "Salmon",
      price: 234,
      description: dummyText,
      image: "assets/images/salmon.jpeg",
      
  ),
  Product(
      id: 3,
      name: "Salmon",
      price: 234,
      description: dummyText,
      image: "assets/images/salmon.jpeg",
      
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
