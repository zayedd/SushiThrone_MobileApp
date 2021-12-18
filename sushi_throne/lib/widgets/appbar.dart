import 'package:flutter/material.dart';
import 'package:sushi_throne/screens/cart.dart';
class AppBarW extends AppBar {
  @override
  // TODO: implement backgroundColor
 final pc = const Color(0xffe5e1d5);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.blueGrey[100],
        iconTheme: IconThemeData(
          color: Colors.black,
      ),
      elevation: 0,
      actions: <Widget>[
        IconButton(onPressed:() { Navigator.push(context, MaterialPageRoute(
                                        builder: (context) =>  CartView()));} , icon: Icon(Icons.shopping_cart))
      ],
    );
  }
// Widget AppBarW(){
//   return new AppBar(backgroundColor: Colors.blueGrey[100],
//          iconTheme: IconThemeData(
//            color: Colors.black,
//        ),
//        elevation: 0,
//       );
// }
}

