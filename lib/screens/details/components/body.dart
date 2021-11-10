import 'package:flutter/material.dart';
import 'package:automated_shop/constants.dart';
import 'package:automated_shop/models/Product.dart';

import 'color_and_size.dart';
import 'description.dart';
import 'counter_with_fav_btn.dart';
import 'add_to_cart.dart';
import 'product_title_with_image.dart';


class Body extends StatelessWidget{
  final Product product;

  const Body({required Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context){
    // It provides us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height *0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product, key: null,),
                      const SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product, key: null,),
                      const SizedBox(height: kDefaultPaddin / 2),
                      const CounterWithFavBtn(key: null,),
                      const SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product, key: null,)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product, key: null,)
             ]
           )
         )
       ]
     )
   );
    
 }
}