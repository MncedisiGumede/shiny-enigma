import 'package:flutter/material.dart';

import '../../../constants.dart';

// ignore: use_key_in_widget_constructors
class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1){
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            // if the item is less, then 10 it shows 01 02 like that
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState((){
              numOfItems++;
            });
          }),
      ],
    );
  }

  SizedBox buildOutlineButton({required IconData icon, required Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: GestureDetector(
        onTap: (){
          press;
        },
         child: Container(
           padding: const EdgeInsets.all(0.0),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(13),
           ),
         child: Icon(icon)
         ),   
      ),
    );
  }
}