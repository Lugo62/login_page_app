import 'package:first_app/forgot_page.dart';
import 'package:first_app/login.dart';
import 'package:first_app/signup.dart';
import 'package:first_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async{await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Welcome()));
}
