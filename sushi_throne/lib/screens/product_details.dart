import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

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
              Container(height: 50,
              width: 40,
              child: Icon(Icons.arrow_back_ios_new_rounded,
              size: 18,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              ),
            ],
          )
        ],
      ),
      )),
    );
  }
}