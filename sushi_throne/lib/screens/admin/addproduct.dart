import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
// import 'dart:convert';
// import 'package:flutter/material.dart';


class ProductService{

 

 FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void>  createProduct (String category,String description,String image,String name,String price)async{
    var id = Uuid();
    String productId = id.v1();


await FirebaseFirestore.instance
        .collection('products')
        .doc(productId)
        .set(
      {
        'category': category,
        'description': description,
        'image': image,
        'name': name,
        'price': price,
      },
    );
    // _firestore.collection('products').doc(productId).set({'category': category});
    // _firestore.collection('products').doc(productId).set({'description': description});
    // _firestore.collection('products').doc(productId).set({'image': image});
    // _firestore.collection('products').doc(productId).set({'name': name});
    // _firestore.collection('products').doc(productId).set({'price': price});
  }

}
