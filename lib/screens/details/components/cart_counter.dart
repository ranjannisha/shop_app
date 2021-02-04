import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.all(4),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
            child: Text(
              // if our item is less  then 10 then  it shows 01 02 like that
              numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  numOfItems++;
                });
              }),
        ],
      ),
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
