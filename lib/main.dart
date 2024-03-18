import 'dart:io';

import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/SingUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Profile_files/ProfilePage.dart';


void main() {
  HttpOverrides.global=MyhttpError();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      theme: ThemeData(
        useMaterial3: false,
      ),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
