import 'package:flutter/material.dart';
import 'package:flutter_app1/models/Product.dart';

import '../../../constants.dart';

class Facilities extends StatelessWidget {
  const Facilities({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 115.0,
        margin: EdgeInsets.only(left: 7.0, top: 5.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all( 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bag_4.png",
                    scale: 2,
                  ),
                  Text(
                    "wifi",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all( 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bag_4.png",
                    scale: 2,
                  ),
                  Text(
                    "wifi",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all( 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bag_4.png",
                    scale: 2,
                  ),
                  Text(
                    "wifi",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all( 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bag_4.png",
                    scale: 2,
                  ),
                  Text(
                    "wifi",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all( 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bag_4.png",
                    scale: 2,
                  ),
                  Text(
                    "wifi",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all( 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/bag_4.png",
                    scale: 2,
                  ),
                  Text(
                    "wifi",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}
