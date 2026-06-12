import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/home.dart';
import 'package:flutter/material.dart';

Future<void> to_register(
  String username,
  String email,
  String password,
  BuildContext context,
) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    await FirebaseFirestore.instance
        .collection("datas")
        .doc(userCredential.user!.uid)
        .set({"name": username, "email": email});
    ScaffoldMessenger.of(
      context,
    ).showSnackBar((SnackBar(content: Text("User created successfully"))));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> to_login(
  String email,
  String password,
  BuildContext context,
) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar((SnackBar(content: Text("Login Successfull!"))));

    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> forgot_pwd(String email, BuildContext context) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar((SnackBar(content: Text("Reseet llink send successful"))));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
