import 'package:flutter/material.dart';
import '/widgets/featured_sushi.dart';
import '/widgets/addtocart.dart';
import 'package:sushi_throne/screens/cart.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartView()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      backgroundColor: Color(0xffe5e1d5),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 40,
                    child: Icon(
                      isFavourite ? Icons.favorite : Icons.favorite_outline,
                      size: 22,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Spicy Lemon Roll",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
            Image.asset(
              "images/spicy_roll.PNG",
              height: 300,
              width: 300,
            ),
            Text("Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23)),
            SizedBox(
              height: 10,
            ),
            Text("Mixed shrimp and salmon with spicy mayonnaise."),
            SizedBox(height: 10),
            AddToCartMenu(i),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: 120,
              //  height: 70,
              child: ElevatedButton(
                onPressed: () {
                  print("Item added to cart");
                },
                style: ElevatedButton.styleFrom(primary: Colors.brown[300]),
                child: Text("Add To Cart"),
              ),
            )
          ],
        ),
      )),
    );
  }
}
