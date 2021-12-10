
import 'package:flutter/material.dart';

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
    drawer: Container(
      width: 200 ,
      child: Drawer(child: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.black,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/salmon.jpg"),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Youssef Zayed",
                     style: TextStyle(
                     color: Colors.white,
                     fontSize: 15,
                     fontWeight: FontWeight.bold),

                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "User",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              )
            ),
          ),
          ListTile(
             leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap:(){
              Navigator.pop(context);
            },
          ), ListTile(
             leading: Icon(Icons.fastfood_outlined),
            title: const Text('Orders'),
            onTap:(){
              Navigator.pop(context);
            },
          ),
           ListTile(
             leading: Icon(Icons.money_off),
            title: const Text('Offers'),
            onTap:(){
              Navigator.pop(context);
            },
          ),
           ListTile(
             leading: Icon(Icons.menu_book_outlined),
            title: const Text('Menu'),
            onTap:(){
              Navigator.pop(context);
            },
          ),
         
        ],
      ),
       
      ),
    ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        iconTheme: IconThemeData(
          color: Colors.black,
      ),
      elevation: 0,
    ),
    backgroundColor: Color(0xffe5e1d5),
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Welcome Youssef", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
               ]
             );
             }),
          
        )
        ],
        ),
      
        )), //safearea for getting items in right dimensions
    );
      
  }
}