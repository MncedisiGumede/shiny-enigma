import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:automated_shop/models/Product.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget{
  const AddToCart({
    required Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: InkWell(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text ('Buy Now')
                    ));
                },
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Buy  Now'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    )
                ),
              ),

            ),            
          ),
        ]
      )
    );
  } 
}