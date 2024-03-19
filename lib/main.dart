import 'dart:io';
import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/SingUp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyhttpError();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("0876d74b-7222-4fbb-a157-341c6026fbae");
// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.Notifications.requestPermission(true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
