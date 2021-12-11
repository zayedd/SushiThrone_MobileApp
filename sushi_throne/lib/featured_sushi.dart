import 'package:flutter/material.dart';
import 'package:sushi_throne/models/Product.dart';




// ignore: must_be_immutable
class FeaturedSushi extends StatelessWidget{
   late final Product p;


  
//   List<String> imagePath = [
//   "images/salmon.jpg",
//   "images/salmon.jpg",
//   "images/salmon.jpg",
//   "images/salmon.jpg",
//   "images/salmon.jpg",
//   ];
//    List<Product> products = [
//   Product(
//       id: 0,
//       name: "Salmon",
//       price: 234,
//       description: "sushi",
//       image: "images/salmon.jpeg",
      
//   ),
//   Product(
//       id: 1,
//       name: "Salmon",
//       price: 234,
//       description: "sushi",
//       image: "assets/images/salmon.jpeg",
      
//   ),
//   Product(
//       id: 2,
//       name: "Salmon",
//       price: 234,
//       description: "sushi",
//       image: "assets/images/salmon.jpeg",
      
//   ),
//   Product(
//       id: 3,
//       name: "Salmon",
//       price: 234,
//       description: "sushi",
//       image: "assets/images/salmon.jpeg",
      
//   ),
// ];

  // FeaturedSushi({Key? key, required this.product}) : super(key: key);


  


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(itemBuilder: (BuildContext context, index){
        return Row(
          children: [
            Container(
              height: 200,
              width: 140,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  
                 
                  Image.asset(p.image![index],
                  height: 100,),
                  Text(p.name![index],
                  style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),)
          ],
        );
      }
      ),
      );
  }
  
}