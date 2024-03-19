import 'package:alumniprofile/Profile_files/ProfilePage.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:alumniprofile/adminEntry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Profile_files/ApiCalls.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final roll = TextEditingController();
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF062525),
      body: Form(
        key: key,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFieldWidget(
                    color: const Color(0xFF88D59B),
                    controller: roll,
                    labelText: 'Enter your id',
                    validator: (ele) {
                      if (ele!.isEmpty) {
                        return 'Please enter roll number';
                      } else if (ele.length < 10) {
                        return 'Please enter valid roll number';
                      } else {
                        return null;
                      }
                    },
                  )),
              ButtonWidget(
                  onPressed: () async {
                    if (key.currentState!.validate() && roll.text.trim() != '1234567890') {
                      await Working_place(roll.text.trim().toUpperCase());
                      await Get_placement(roll.text.trim().toUpperCase());
                    }
                    else if(roll.text.trim() == '1234567890'){
                      print('admin');
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminSearch()));
                    }

                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             MainPage(RollNumber: roll.text.trim())));
                  },
                  data: 'Submit')
            ],
          ),
        ),
      ),
    );
  }
}
