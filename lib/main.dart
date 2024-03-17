import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Profile_files/ProfilePage.dart';


void main() {
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
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
