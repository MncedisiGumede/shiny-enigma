import 'package:automated_shop/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:automated_shop/constants.dart';



// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default the icon is white
            color: kTextColor,),
            onPressed: (){},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default the icon is white
            color: kTextColor,
          ),
          onPressed: (){},
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
