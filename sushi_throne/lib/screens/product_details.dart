import 'package:flutter/material.dart';
import '/widgets/featured_sushi.dart';
import '/widgets/addtocart.dart';
class ProductDetails extends StatefulWidget {
   const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
bool isFavourite = false;
int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e1d5),
      body: SafeArea(child: Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width:40,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 18,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle
                  ),

                  ),
                  ),
              InkWell(
                onTap: (){
                  setState(() {
                    isFavourite =! isFavourite;
                  });
                },
                child: Container(height: 50,
                width: 40,
                child: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_outline,
                size: 18,
                
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                 ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text("Spicy Lemon Roll",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 1
           ),
          ),
          Image.asset("images/spicy_roll.PNG",
          height: 300,
          width: 300,),
          Text("Description", style: TextStyle(
          fontWeight: FontWeight.bold ,
          fontSize: 26)
          ),
          SizedBox(height: 10,),
          Text("Mixed shrimp and salmon with spicy mayonnaise."),
         AddToCartMenu(i)
        ],
      
      ),
      
      )),
    );
  }
}
