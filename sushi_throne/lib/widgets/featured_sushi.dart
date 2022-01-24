import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sushi_throne/models/Product_model.dart';
import 'package:sushi_throne/screens/login.dart';
import 'package:sushi_throne/screens/product_details.dart';
import 'package:sushi_throne/widgets/featured_sushi.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class FeaturedSushi extends StatefulWidget {
  final pid;

  const FeaturedSushi({Key? key, this.pid}) : super(key: key);
  @override
  State<FeaturedSushi> createState() => _FeaturedSushiState();
}

class _FeaturedSushiState extends State<FeaturedSushi> {
  List products = [];
  CollectionReference prodref =
      FirebaseFirestore.instance.collection("products");
  getData() async {
    var responsebody = await prodref.get();
    responsebody.docs.forEach((element) {
      setState(() {
        products.add(element.data());
      });
    });
    print(products);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  List<String> image = [
    "images/spicy_lemonf.png",
    "images/calfornia_roll.png",
    "images/crispy_roll.png",
    "images/spicy_tuna.png",
    "images/tuna_ngiri.png",
  ];

  List<String> name = [
    "Spicy Lemon Roll",
    "Calfornia Roll",
    "Crispy Roll",
    "Spicy Tuna",
    "Tuna Ngiri",
  ];

  List<double> price = [40, 50, 55, 45, 60, 70];

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
      flex: 3,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: products.length,
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
                          height: 5,
                        ),
                        Image.asset(
                          image[index],
                          height: 110,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${products[index]['name']}",
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
                                  "${products[index]['price']}",
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ProductDetails()));
                                    },
                                    color: Color(0xff465465),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25)),
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetails()));
                  },
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
