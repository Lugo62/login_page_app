import 'package:first_app/login.dart';
import 'package:first_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 7),
              //text1
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),

              Lottie.asset("welcome_anim.json"),
              //textfields
              SizedBox(height: 50),

              SizedBox(
                width: double.infinity,
                height: 60,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Colors.black,

                    side: BorderSide(
                      width: 1,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("Login"),
                ),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 60,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 57, 255),
                    foregroundColor: Colors.white,
                    elevation: 1,

                    side: BorderSide(width: 1.5, color: Colors.black),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ),

              SizedBox(height: 38),
            ],
          ),
        ),
      ),
    );
  }
}
