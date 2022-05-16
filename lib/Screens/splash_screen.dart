import 'package:flutter/material.dart';
import 'package:noneed/configrations/configuration.dart';
import 'package:noneed/screens/splash_body.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}




