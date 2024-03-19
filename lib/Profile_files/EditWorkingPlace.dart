import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';

class EditWorkingPlace extends StatefulWidget {
  const EditWorkingPlace({super.key});

  @override
  State<EditWorkingPlace> createState() => _EditWorkingPlaceState();
}

class _EditWorkingPlaceState extends State<EditWorkingPlace> {
  bool check = false;

  final companyName = TextEditingController();
  final location = TextEditingController();

  void saveDetails() async {
    // update the API with workPlace details

    if (key.currentState!.validate()) {
      check = true;
      setState(() {});
      await UpdateCompany(
          Student_id!, companyName.text.trim(), location.text.trim());
      // await Working_place(Student_id!).then( setState(() {
      //   check = false;
      // }));
      setState(() {
        check = false;
      });

      Navigator.pop(context);
    }
  }

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return IntrinsicHeight(
      child: Container(
        // height: h*0.31,
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFieldWidget(
                controller: companyName,
                color: Color(0xFF88D59B),
                validator: (ele) {
                  if (ele!.isEmpty) {
                    return 'Please enter the Company Name';
                  } else {
                    return null;
                  }
                },
                labelText: 'Company Name',
              ),
              TextFieldWidget(
                  controller: location,
                  labelText: 'Location',
                  validator: (ele) {
                    if (ele!.isEmpty) {
                      return 'Please enter the location';
                    } else {
                      return null;
                    }
                  },
                  color: Color(0xFF88D59B)),
              // SizedBox(height: 10,),
              // Row(
              //   children: [
              //     Container(
              //       width: 100,
              //       child: TextFieldWidget(controller: ctc, labelText: 'CTC', validator: (ele){
              //         if(ele!.isEmpty){
              //           return 'Please enter the CTC';
              //         }else{
              //           return null;
              //         }
              //       }, color: Color(0xFF062525)),
              //     ),
              //     Container(
              //       width: 160,
              //       child: TextFieldWidget(controller: role, labelText: 'Role', validator: (ele){
              //         if(ele!.isEmpty){
              //           return 'Please enter the Role';
              //         }else{
              //           return null;
              //         }
              //       }, color: Color(0xFF062525)),
              //     ),
              //   ],
              // ),
              SizedBox(
                height: 3,
              ),
              (check)
                  ? CircularProgressIndicator()
                  : ButtonWidget(onPressed: saveDetails, data: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}
