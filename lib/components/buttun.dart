import 'package:flutter/material.dart';
import 'package:noneed/constants.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: 50,
      decoration: BoxDecoration(
        color: rightButton,

        borderRadius: BorderRadius.circular(20),
        // border: Border.all(color: Color.fromRGBO(141, 141, 141, 1.0).withAlpha(50), width: 1)),
        boxShadow: [
          BoxShadow(
            color: rightButton.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),

        child: FlatButton(
          color: color,
          onPressed: press,

          child:
            Icon(Icons.arrow_forward_ios,color: Colors.white,),
          ),


    );
  }
}
