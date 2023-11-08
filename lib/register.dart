import 'package:flutter/material.dart';
import 'package:rentedvehicleapp/rented_vehicle_app/available_vehicles.dart';

import 'login.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //create the controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(

            shrinkWrap: true,
            children: [
              const Text('Name'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Name',
                ),
              ),
              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Email'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Mobile'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Mobile',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Password'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),

              SizedBox(
                height: 10,
              ),
              //create button for register
              ElevatedButton(
                onPressed: () {
                  // Print input values
                  // print(nameController.text);
                  // print(emailController.text);
                  // print(mobileController.text);
                  // var passController;
                  // print(passController.text); // Assuming you have a TextEditingController for password, as mentioned in your previous code

                  // Navigate to vehiclesoverview page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()), // Assuming VehiclesOverview is the widget class for the next page
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  VehiclesOverview() {}
}