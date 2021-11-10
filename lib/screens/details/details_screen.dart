import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:automated_shop/constants.dart';
import 'package:automated_shop/models/Product.dart';
import 'package:automated_shop/screens/details/components/body.dart';


class DetailsScreen extends StatelessWidget{
  final Product product;

  const DetailsScreen({
  required Key? key, 
  required this.product}) : super(key: key); 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // each product has a color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product, key: null,),
    );
  }

  AppBar buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),  
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin /2)
      ],
    );
  }
}