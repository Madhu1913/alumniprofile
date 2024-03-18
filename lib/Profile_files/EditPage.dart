import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'Widgets.dart';
class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final number=TextEditingController();
  final mail=TextEditingController();
  final linkedin=TextEditingController();
  final key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.625,
      width: w * 0.8,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF0B4948), Color(0xFF062525)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(width: 2, color: Color(0xFF88D59B))
      ),
      child: Form(
        key: key,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFieldWidget(
              color: Color(0xFF88D59B),
              controller: number, labelText: 'Mobile number',validator: (ele){
              if(ele!.isEmpty){
                return 'Please enter mobile number';
              }else if(ele.length<10){
                return 'Please enter valid mobile number';
              }else{
                return null;
              }
            },),
            TextFieldWidget(
              color: Color(0xFF88D59B),
              controller: mail, labelText: 'E-mail',validator: (ele){
              if(ele!.isEmpty){
                return 'Please enter E-mail';
              }else if(!ele.endsWith('@gmail.com')){
                return 'Please enter valid E-mail';
              }else{
                return null;
              }
            },),
            TextFieldWidget(
              color: Color(0xFF88D59B),

              controller: linkedin, labelText: 'LinkedIn',validator:  (ele){
              if(ele!.isEmpty){
                return 'Please enter linkedin id';
              }
              else{
                return null;
              }
            },),
            SizedBox(height: h*0.05,),
            ButtonWidget(data:'Submit',onPressed: (){
              if(key.currentState!.validate()){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
              }
            }, )
          ],
        ),
      ),
    );
  }
}