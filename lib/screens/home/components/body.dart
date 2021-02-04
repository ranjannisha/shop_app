import 'package:flutter/material.dart';
import 'package:flutter_app1/constants.dart';
import 'package:flutter_app1/models/Product.dart';
import 'package:flutter_app1/screens/details/details_screen.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Meeting Place",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child:
            ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context,int index){
                  return ItemCard(
                                product: products[index],
                                press: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                        product: products[index],
                                      ),
                                    ))
                              );
                }
            ),
          ),
        ),
      ],
    );
  }
}
