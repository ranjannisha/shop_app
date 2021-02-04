import 'package:flutter/material.dart';
import 'package:flutter_app1/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Card(
            child: ListTile(
                leading: Container(
                  // padding: EdgeInsets.all(kDefaultPaddin),
                  height: 200,
                  width: 100,
                  color:Colors.grey,
                  child: Stack(

                    children: [
                      Positioned(
                        child:Image.asset(product.image),
                      ),
                      Positioned(
                        right: 10,
                        bottom:-10,
                        child: Container(
                          width:50,
                          height:50,
                       //   color: Colors.green,
                          child:Icon(Icons.favorite, color: Colors.white, size: 20,),
                        ),
                      ),
                      Positioned(
                        right: -20,
                        bottom:-30,
                        child: Container(
                            width:50,
                            height:50,
                         //   color: Colors.green,
                            child:Text("${product.like}K", style: TextStyle(color: Colors.white,),)
                        ),
                      )
                    ],
                  ),
                ),
                // Container(
                //   // padding: EdgeInsets.all(kDefaultPaddin),
                //   height: 100,
                //   width: 100,
                //   child: Stack(
                //     children: [
                //       Positioned(
                //         right: -25,
                //         bottom:-30,
                //         child: Container(
                //           height: 100,
                //           width: 100,
                //           decoration: BoxDecoration(
                //               image: new DecorationImage(
                //                 image: new ExactAssetImage(product.image),
                //                 fit: BoxFit.cover,
                //               ),
                //               // color: product.color,
                //               borderRadius: BorderRadius.circular(16)),
                //           // color: Colors.green,
                //           child:Icon(Icons.favorite, color: Colors.white, size: 20,),
                //         ),
                //       ),
                //       Positioned(
                //         right: -25,
                //         bottom:-30,
                //         child: Container(
                //             width:50,
                //             height:50,
                //             //   color: Colors.green,
                //             child:Text("${product.like}k", style: TextStyle(color: Colors.white,),)
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // Stack(
                //     children: [
                //       Container(
                //           padding: EdgeInsets.all(kDefaultPaddin),
                //           height: 80,
                //           width: 60,
                //           decoration: BoxDecoration(
                //             image: new DecorationImage(
                //               image: new ExactAssetImage(product.image),
                //               fit: BoxFit.cover,
                //             ),
                //             border: Border.all(
                //               color: Colors.grey,
                //               width: 1,
                //             ),
                //             // color: product.color,
                //             borderRadius: BorderRadius.circular(16),
                //           ),
                //       ),
                //       Align(
                //         alignment: Alignment.topCenter,
                //         child: Text("${product.like}K",style: TextStyle(color: Colors.white),
                //       ),
                //       ),
                //     ]
                // ),
                title:  Text(
                  "\$${product.price}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        // products is out demo list
                        product.title,
                        style: TextStyle(color: kTextLightColor),
                      ),
                      new Container(
                        padding: EdgeInsets.only(top: 5.0),
                        child: new Row(
                            children: <Widget>[
                              new Container(
                                padding: EdgeInsets.only(left: 5.0, top: 3.0),
                                child: new Text("3200 sq.ft",style: new TextStyle(
                                  color: Color(0xFF888888),
                                ),
                                ),
                              ),
                              new Padding(
                                  padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0),
                                  child: new Text(
                                    '|',
                                    style: new TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 17.0,
                                    ),
                                  )
                              ),
                              new Container(
                                padding: EdgeInsets.only(left: 5.0, top: 3.0),
                                child: new Text(
                                  "4 BHK",
                                  style: new TextStyle(
                                    color: Color(0xFF888888),
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }
}
