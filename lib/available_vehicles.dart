
import 'package:flutter/material.dart';






class vertscroll extends StatefulWidget {
  const vertscroll({super.key});

  @override
  State<vertscroll> createState() => _Home4State();
}

class _Home4State extends State<vertscroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Rented Vehicles",style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child:SingleChildScrollView(
          child: Column(

            children: [

              Row(
                children: [
                  Text("Welcome",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    // scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                         Image.asset("assets/images/vehicle.jpg"),

                        Container(
                          margin: EdgeInsets.all(10),
                          height:600,
                          width: 1000,
                          padding:EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Taxi.jpg"),
                              // image:NetworkImage("assets/images/img_1.png"),
                              //also give address of image
                              fit:BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(""),

                          ),
                        ),

                        Container(
                          margin: EdgeInsets.all(10),
                          height:600,
                          width: 1000,
                          padding:EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Jeep.jpg"),
                              // image:NetworkImage("assets/images/img_1.png"),
                              //also give address of image
                              fit:BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(""),

                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height:600,
                          width: 1000,
                          padding:EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Bike.jpg"),
                              // image:NetworkImage("assets/images/img_1.png"),
                              //also give address of image
                              fit:BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(""),

                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height:600,
                          width: 1000,
                          padding:EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/all.jpg"),

                              // image:NetworkImage("assets/images/img_1.png"),
                              //also give address of image
                              fit:BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(""),

                          ),
                        ),



                      ],
                    ),
                  ),
                ],
              ),

            ],),),),
    );
  }
}
