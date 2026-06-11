import 'package:first_app/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final formkey_signup = GlobalKey<FormState>();

  TextEditingController e1c = TextEditingController();
  TextEditingController p1c = TextEditingController();
  TextEditingController uc = TextEditingController();
  TextEditingController cpc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Form(
        key: formkey_signup,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                //text1
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Create an account, it's free",
                  style: TextStyle(
                    color: Color.fromARGB(255, 128, 128, 128),
                    fontSize: 12,
                  ),
                ),

                //textfields
                SizedBox(height: 50),

                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Username",
                    style: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 12,
                    ),
                  ),
                ),

                SizedBox(height: 3),

                TextFormField(
                  controller: uc,
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
                    "Email",
                    style: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 12,
                    ),
                  ),
                ),

                SizedBox(height: 3),

                TextFormField(
                  controller: e1c,
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

                TextFormField(
                  controller: p1c,
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
                    "Confirm Password",
                    style: TextStyle(
                      color: Color.fromARGB(255, 61, 61, 61),
                      fontSize: 12,
                    ),
                  ),
                ),

                SizedBox(height: 3),

                TextFormField(
                  controller: cpc,
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

                SizedBox(height: 42),

                Container(
                  width: double.infinity,
                  height: 60,

                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 39, 57, 255),
                      foregroundColor: Colors.white,
                      elevation: 5,

                      side: BorderSide(width: 2, color: Colors.black),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Sign Up"),
                  ),
                ),

                SizedBox(height: 38),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create an account, it's free",
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
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
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
      ),
    );
  }
}
