import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/Profile_files/EditWorkingPlace.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Current_company extends StatefulWidget {
  const Current_company({super.key});

  @override
  State<Current_company> createState() => _Current_companyState();
}

class _Current_companyState extends State<Current_company> {
  void changeCompany() {
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EditWorkingPlace()));
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFF062525),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            title: TextWidget(
              data: 'Edit Details',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            content: EditWorkingPlace(),
          );
        });
  }

  void delete() {
    // setState(() {
    //   print("Setstate called");
    // });
  }

  @override
  Widget build(BuildContext context) {
    String companyName = Workingplace_responce["company_name"];
    String location = Workingplace_responce["company_location"];

    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: 40,),
        // Card(
        //   color: Color(0xFF062525).withOpacity(0.5),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(30),
        //     // side: BorderSide(
        //     //   // color: Color(0xFF61D883).withOpacity(0.5),
        //     // )
        //   ),
        //   shadowColor: Color(0xFF062525),
        //   child: IntrinsicHeight(
        //     child: Container(
        //       margin: EdgeInsets.only(right: 10),
        //       padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(30),
        //         color: Color(0xFF61D883),
        //       ),
        //       width: double.infinity,
        //       // child: TextWidget(data: '$companyName ',),
        //       child: Padding(
        //         padding:  EdgeInsets.only(left: 10.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //           children: [
        //             SizedBox(height: 10,),
        //             TextWidget1(data:companyName ,fontSize: 19,fontWeight: FontWeight.w700,),
        //             SizedBox(height: 4,),
        //             TextWidget1(data: location,fontSize: 19,fontWeight: FontWeight.w700,),
        //             SizedBox(height: 10,)
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: Color(0xFF003634),
                    blurRadius: 2,
                    spreadRadius: 2)
              ],
              borderRadius: BorderRadius.circular(24),
              border: Border(
                  top: BorderSide(color: Color(0xFF75C8A5), width: 2),
                  left: BorderSide(color: Color(0xFF75C8A5), width: 2)),
              gradient: LinearGradient(
                  colors: [Color(0xFF003634), Color(0xFF75C8A5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        TextWidget2(data: 'Company Name : ', fontSize: 20, fontWeight: FontWeight.w700),
                        TextWidget2(
                          data: companyName,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextWidget2(data: 'Location : ', fontSize: 20, fontWeight: FontWeight.w700),

                        TextWidget2(
                          data: location,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(onPressed: changeCompany, data: 'Update'),

            ButtonWidget(onPressed: delete, data: 'Delete'),
          ],
        )
      ],
    );
  }
}
