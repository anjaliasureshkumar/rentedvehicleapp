import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rentedvehicleapp/register.dart';

import 'homepage.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var user = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: user,
                decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: pass,
                decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'password'),

              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.purple,
                ),
                height: 40,
                width: 150,

                child: Center(child: Text('Login',style: TextStyle(color: Colors.white),)),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Register as '),
                    InkWell(
                        onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));

                          // Navigator.push(context, MaterialPageRoute(builder: (context) {
                          //   return RegisterPage();
                          // },));
                        },
                        child: Text('User? ',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),)),
                    Text('OR '),
                    InkWell(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) {
                          //   return Owner();
                        },
                        child: Text('Owner?',style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold))),


                  ]),

            ),
          ]
      ),
    );
  }
}