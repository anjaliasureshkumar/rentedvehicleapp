import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'login.dart';




class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    // Simulate a delay for the splash screen (e.g., 2 seconds).
    Timer(Duration(seconds: 3), () {
      // Navigate to the main app screen.
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Login(), // Your main app screen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Image.asset(
      //     'assets/images/vehicle.jpg',
      //     width: double.infinity,
      //     height: double.infinity,
      //     fit: BoxFit.cover,
      //   ) ,
      //
      //     // Your splash screen content
      // ),
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/vehicle.jpg',
            width: double.infinity,
          height: double.infinity,
            fit: BoxFit.cover,),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Adjust the sigma values for blur intensity
            child: Container(
              color: Colors.black.withOpacity(0.5), // Adjust the opacity for the blur effect
            ),
          ),
          Center(

            child: Text("WELCOME",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                color: Colors.limeAccent),) ,
          )
        ],
      ),
    );
  }
}
