import 'package:flutter/material.dart';
import 'package:noneed/Screens/Welcome/welcome_screen.dart';
import 'package:noneed/components/buttun.dart';
import 'package:noneed/configrations/configuration.dart';
import 'package:noneed/configrations/constants.dart';
import 'package:noneed/data/data.dart';
import 'package:noneed/screens/splash_content.dart';

import 'Signup/signup_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: <Widget>[

            SizedBox(height: 20,),


            Expanded(
              flex: 5,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  head: splashData[index]["head"],
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(

                  children: <Widget>[

                    SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),


                    SizedBox(height: 50,),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       Text('Skip',
                       style: TextStyle(
                         color: bodyColor,
                         fontSize: 16
                       ),),
                       RoundButton(
                         press: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) {
                                 return WelcomeScreen();
                               },
                             ),
                           );
                         },
                       ),

                     ],
                   ),


                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 7),
      height: 3,
      width: currentPage == index ? 20 : 15,
      decoration: BoxDecoration(
        color: currentPage == index ? dotColor : notDotColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

}