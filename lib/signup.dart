import 'package:first_app/login.dart';
import 'package:first_app/service.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey_signup = GlobalKey<FormState>();

  TextEditingController e1c = TextEditingController();

  TextEditingController p1c = TextEditingController();

  TextEditingController uc = TextEditingController();

  TextEditingController cpc = TextEditingController();

  bool isVisible1 = true, isVisible2 = true;

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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Username is required ";
                    }
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required ";
                    }
                    if (!(value.contains("@") || value.contains("."))) {
                      return "Enter a valid Email!";
                    }
                  },

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
                  obscureText: isVisible1,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required ";
                    }
                    if (!(value.length == 6)) {
                      return "atleast 6 characters required!";
                    }
                  },

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
                    suffixIcon: IconButton(
                      style: IconButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 98, 0, 255),
                      ),
                      onPressed: () {
                        setState(() {
                          isVisible1 = !isVisible1;
                        });
                      },
                      icon:
                          isVisible1
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
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
                  obscureText: isVisible2,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required ";
                    }
                    if (value != p1c.text) {
                      return "Password doesn't match";
                    }
                  },
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

                    suffixIcon: IconButton(
                      style: IconButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 98, 0, 255),
                      ),
                      onPressed: () {
                        setState(() {
                          isVisible2 = !isVisible2;
                        });
                      },
                      icon:
                          isVisible2
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
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
                    onPressed: () {
                      if (formkey_signup.currentState!.validate()) {
                        to_register(uc.text, e1c.text, p1c.text, context);
                        uc.clear();
                        e1c.clear();
                        p1c.clear();
                        cpc.clear();
                      }
                    },
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
