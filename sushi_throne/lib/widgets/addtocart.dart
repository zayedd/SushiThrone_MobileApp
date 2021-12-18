import 'package:flutter/material.dart';
class AddToCartMenu extends StatefulWidget {
  int productCounter;

  AddToCartMenu(this.productCounter);

  @override
  State<AddToCartMenu> createState() => _AddToCartMenuState();
}

class _AddToCartMenuState extends State<AddToCartMenu> {




  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if(widget.productCounter!=0)
                widget.productCounter = widget.productCounter-4;
              });
              },
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 18,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              width: 86.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                //  border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Text(
                  '${widget.productCounter}',
                  style: new TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                
                widget.productCounter = widget.productCounter+4;
              });
            },
            icon: Icon(Icons.add),
            color: Colors.black,
            iconSize: 18,
          ),
        ],
      ),
    );
  }
}