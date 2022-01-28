import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:stepper/stepper_demon.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffEFF1DB),
              Color(0xffE5F2F0),
            ],
          ),
          navigateAfterSeconds: StepperDemo(),
          loaderColor: Colors.transparent,
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/iby3l.png'),
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );
  }
}
