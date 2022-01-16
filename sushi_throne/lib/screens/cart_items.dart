import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  int productCounter = 4;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Container(
                    width: 100.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/spicy_lemonf.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.0,
                      child: Text(
                        'Spicy Lemon Roll',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (widget.productCounter != 4)
                            widget.productCounter = widget.productCounter - 4;
                        });
                      },
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '${widget.productCounter}',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.productCounter = widget.productCounter + 4;
                        });
                      },
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'EGP 200 ',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
