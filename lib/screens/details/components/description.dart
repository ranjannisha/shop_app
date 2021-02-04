import 'package:flutter/material.dart';
import 'package:flutter_app1/models/Product.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Text(product.title,style:TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
        ),
        Padding(
          padding:  EdgeInsets.all(8),
          child: Text(
            product.description,
            style: TextStyle(height: 1.5),
          ),
        ),
        Container(
          child: Text("Facilities",style:TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
