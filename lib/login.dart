import 'package:first_app/forgot_page.dart';
import 'package:first_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController ec = TextEditingController();
  TextEditingController pc = TextEditingController();

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
              //text1
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 5),

              Text(
                "Login to your account!",
                style: TextStyle(
                  color: Color.fromARGB(255, 128, 128, 128),
                  fontSize: 12,
                ),
              ),

              //textfields
              SizedBox(height: 30),

              Lottie.asset("login_anim.json", fit: BoxFit.cover, height: 185),

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 12,
                  ),
                ),
              ),

              SizedBox(height: 3),

              TextField(
                controller: ec,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),

              SizedBox(height: 11),

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 12,
                  ),
                ),
              ),

              SizedBox(height: 3),

              TextField(
                controller: pc,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 13,
                    color: Color.fromARGB(255, 59, 59, 59),
                  ),
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
              ),

              SizedBox(height: 5),

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Forgot()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                ),
              ),

              SizedBox(height: 30),

              Container(
                width: double.infinity,
                height: 60,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 57, 255),
                    foregroundColor: Colors.white,
                    elevation: 4,

                    side: BorderSide(width: 2, color: Colors.black),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ),

              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 128, 128, 128),
                      fontSize: 12,
                    ),
                  ),

                  SizedBox(width: 8),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signup()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
