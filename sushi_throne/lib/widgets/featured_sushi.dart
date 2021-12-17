import 'package:flutter/material.dart';
import 'package:sushi_throne/models/Product.dart';
import 'package:sushi_throne/product_details.dart';




// ignore: must_be_immutable
class FeaturedSushi extends StatelessWidget{
   
   
   
  


  

  
  List<String> image = [
  "images/salmon.jpg",
  "images/salmon.jpg",
  "images/salmon.jpg",
  "images/salmon.jpg",
  "images/salmon.jpg",
  ];

   List<String> name = [
    "Salmon",
    "Salmon",
    "Salmon",
    "Salmon",
    "Salmon",
  ];
  List<double
  > price = 
    [5.50, 5.50 ,5.50, 5.50, 5.50, 5.50];

  List<String> desc = [
    "Salmonzz",
    "Salmon",
    "Salmon",
    "Salmon",
    "Salmonss",
    
  ];

   
//    L
//ist<Pr
//oduct> products = [
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
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: image.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
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
                      Image.asset(
                        image[index],
                        height: 100,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        name[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      
                      
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                r'EGP',
                                style: TextStyle(
                                    color: Colors.black,
                                    
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${price[index]}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ButtonTheme(
                                minWidth: 20,
                                height: 20,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => const ProductDetails()));
                                  },
                                  color: Color(0xff465465),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: Text(
                                    "Order",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.brown[100],
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            );
          }),
    );
  }
}