import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';



class BrandService{
 
 String ref1 = 'brands';
 FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void createBrand(String name){
    var id = Uuid();
    String brandId = id.v1();

    _firestore.collection(ref1).doc(brandId).set({'brand': name});
  }

 Future<List<DocumentSnapshot>> getBrands() => _firestore.collection(ref1).get().then((snaps){
      print(snaps.docs.length);
      return snaps.docs;
    });

}



