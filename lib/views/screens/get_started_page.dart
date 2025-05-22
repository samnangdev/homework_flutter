import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "FastFast",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber[900],
                          letterSpacing: 2,
                        ),
                        
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Icon(
                      Icons.location_on,
                      size: 60,
                      color: Colors.amber[900],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Lottie.asset(
                'assets/lotties/Animation - 1747714644934.json',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome To FastFast",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text(
                  "Discover, order, and enjoy your favorite dishes in just a few taps!",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                              ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 300, // Makes the button take the full available width
                height: 50, // Optional: set height
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 111, 0),
                    minimumSize: Size(double.infinity, 200)
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    }));
                  },
                  child: const Text("Get Started"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
