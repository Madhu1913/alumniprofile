import 'package:alumniprofile/Profile_files/ProfilePage.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
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
  final key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFieldWidget(
                  color: Color(0xFF062525),

                  controller: roll,labelText: 'Roll Number',validator: (ele){
                  if(ele!.isEmpty){
                    return 'Please enter roll number';
                  }else if(ele.length<10){
                    return 'Please enter valid roll number';
                  }else{
                    return null;
                  }
                },)
              ),
              ButtonWidget(onPressed: () async{

                if(key.currentState!.validate()){
                  await Get_placement(roll.text.trim().toUpperCase());
                }

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             MainPage(RollNumber: roll.text.trim())));
              }, data: 'Submit')
            ],
          ),
        ),
      ),
    );
  }
}
