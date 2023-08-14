import 'package:flutter/material.dart';

void main() {
  runApp(ReservationApp());
}

class ReservationApp extends StatelessWidget {
  const ReservationApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Reservation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Reservation'),
      ),
      body: Center(
        child: RestaurantWidget(),
      ),
    );
  }
}

class RestaurantWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          '../../images/image.png',
          width: 100,
          height: 100,
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(bottom: 18.0), 
          child: Text(
            'Restaurant Name',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'SpecialFont', // Replace with the name of your special font
            ),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 1, 52, 109), // Background color
            onPrimary: Colors.white, // Text color
            textStyle: TextStyle(fontSize: 18), // Text style
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Button padding
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14), // Button border radius
            ),
          ),
          child: Text('Dashboard'),
        ),
      ],
    );
  }
}