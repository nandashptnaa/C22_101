import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:c22_101/splash_screen/sps1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>const sps1()
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var lebar = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    var tinggi = MediaQuery.of(context).size.height;
    return AnimatedSplashScreen(
      
        splash: "assets/loading.png",
        nextScreen: const sps1(),
        splashIconSize: 250,
        duration: 500000,
        splashTransition: SplashTransition.rotationTransition,
        animationDuration: const Duration(seconds: 1));
  }
}
