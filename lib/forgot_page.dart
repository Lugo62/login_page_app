import 'package:first_app/login.dart';
import 'package:first_app/service.dart';
import 'package:first_app/signup.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Forgot extends StatelessWidget {
  Forgot({super.key});
  final formkey_forgot = GlobalKey<FormState>();
  TextEditingController e2c = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Form(
        key: formkey_forgot,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                //text1
                Text(
                  "Reset Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                //textfields
                SizedBox(height: 30),

                SizedBox(height: 3),

                TextFormField(
                  controller: e2c,
                  decoration: InputDecoration(
                    labelText: "Enter email",
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

                SizedBox(height: 20),

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
                    onPressed: () {
                      forgot_pwd(e2c.text, context);

                      e2c.clear();
                    },
                    child: Text("Send Link"),
                  ),
                ),

                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Go back to",
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
                      child: GestureDetector(
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
