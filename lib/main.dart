import 'package:flutter/material.dart';
import 'package:rentedvehicleapp/available_vehicles.dart';
import 'package:rentedvehicleapp/splash.dart';

import 'homepage.dart';
// import 'package:task_dart/rented_vehicle_app/login-page.dart';
// import 'package:task_dart/rented_vehicle_app/splash_screen.dart';

// import 'Login-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        primarySwatch: Colors.purple,
      ),
      home: vertscroll()
    );
  }

}