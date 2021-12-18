import 'package:flutter/material.dart';
import 'package:sushi_throne/models/Product.dart';
import 'package:sushi_throne/screens/login.dart';
import 'package:sushi_throne/screens/product_details.dart';
import 'package:sushi_throne/widgets/featured_sushi.dart';



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
                InkWell(
                  child: Container(
                  height: 200,
                  width: 170,
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
                                    textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ButtonTheme(
                                minWidth: 20,
                                height: 20,
                                //ignore: deprecated_member_use
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const ProductDetails()));
                },
                 )
                ,
                SizedBox(
                  width: 10,
                ),
                
              ],
            );
            
          }),
        
    );
  }
}