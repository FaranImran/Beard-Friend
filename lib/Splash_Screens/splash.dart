import 'dart:async';
import 'package:alright/Splash_Screens/splash%201.dart';
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

    Timer(Duration(seconds:2),(){
       Navigator.pushReplacement(context, MaterialPageRoute(
           builder: (context)=> Splashscreen()
       ));
     // Navigator.pushNamed(context, Splashscreen());
     });
     
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
       color: const Color.fromRGBO(47, 47, 55,100),

          child: Image.asset('assets/img/logo.png'),


        ),
      ),
    );
  }
}
