import 'package:flutter/material.dart';
import 'package:flutter_app1/constants.dart';
import 'package:flutter_app1/models/Product.dart';

import 'add_to_cart.dart';
import 'facilities.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child:  Column(
        children: <Widget>[
          SizedBox(height: kDefaultPaddin / 2),
          ProductTitleWithImage(product: product,),
          SizedBox(height: kDefaultPaddin / 2),
          Description(product: product),
          SizedBox(height: kDefaultPaddin / 2),
          Facilities(product: product),
          AddToCart(product: product),
        ],
      ),
    );
  }
}

