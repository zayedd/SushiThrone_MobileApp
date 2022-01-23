
import 'package:flutter/material.dart';
import 'package:sushi_throne/widgets/drawer.dart';
import 'package:sushi_throne/widgets/featured_sushi.dart';
import 'package:sushi_throne/models/Product_model.dart';
import '/widgets/appbar.dart';
import '/screens/cart.dart';
class HomePage extends StatelessWidget {
  
 List<String> imagePath = [
   "images/salmon.jpg",
   "images/shrimp.jpg",
   "images/nigiri.jpg",
   "images/tuna.jpg",
   "images/combos.png",
   "images/salad.jpeg",
   "images/sauces.jpg"
 ];

 List<String> categories= ["Salmon","Shrimp","Ngiri","Tuna","Combos","Salads","Sauces"];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size; 
    return Scaffold(
     drawer: Drawerc(),
   
    appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        iconTheme: IconThemeData(
          color: Colors.black,
      ),
      elevation: 0,
      actions: <Widget>[
        IconButton(onPressed:() { Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>  CartView()));} , icon: Icon(Icons.shopping_cart))
      ],
    ),
    backgroundColor: Color(0xffe5e1d5),
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Welcome Guest", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          new Container(
            margin: EdgeInsets.only(top: 7),
  child: new  TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[600]),
          hintText: "Search Your Sushi",
          prefixIcon: Icon( Icons.search),
          fillColor: Colors.white),
    )
),
          SizedBox(height: 35,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              "See all",
            style: TextStyle(
            color: Colors.blueGrey[800],
            fontWeight: FontWeight.bold,
            fontSize: 13
            ),
            )
            ],
          ),
          SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
             return Row(
               children: [
                 Column(
                   children: [
                     Container(
                       height: 60,
                       width: 50,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage(imagePath[index]),
                           fit: BoxFit.cover,
                           
                         ),
                       ),
                     ),
                     SizedBox(height: 5,),
                     Text(categories[index],
                      style: TextStyle(fontSize: 12,
                      color: Colors.blueGrey[888],
                      fontWeight: FontWeight.bold),
                      )
                    
                   ],
                 ),
                 SizedBox(width: 10,), //space between categories
               ],
             );
            }),
          
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Featured Rolls", style: TextStyle( fontWeight: FontWeight.bold),
            ),
            Text("See all",
            style: TextStyle(color: Colors.blueGrey[800]),
            )
          ],
        ),
        SizedBox(height: 20,),
        
        // ignore: prefer_const_constructors
        FeaturedSushi(),
        
        ],
        
        ),
      
        )), //safearea for getting items in right dimensions
        
    );
      
  }
}