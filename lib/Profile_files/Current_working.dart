import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Current_company extends StatefulWidget {
  const Current_company({super.key});

  @override
  State<Current_company> createState() => _Current_companyState();
}

class _Current_companyState extends State<Current_company> {
  int num = 0;
  void changeCompany() {
    setState(() {});
    num = 1;
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>EditWorkingPlace()));
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         backgroundColor: Color(0xFF062525),
    //         shape:
    //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
    //         title: TextWidget(
    //           data: 'Edit Details',
    //           fontSize: 20,
    //           fontWeight: FontWeight.bold,
    //         ),
    //         content: EditWorkingPlace(),
    //       );
    //     });
  }

  void delete() {
    // setState(() {
    //   print("Setstate called");
    // });
  }
  bool check = false;

  final companyNamee = TextEditingController();
  final locationn = TextEditingController();
  final key = GlobalKey<FormState>();

  void saveDetails() async {
    // update the API with workPlace details

    if (key.currentState!.validate()) {
      check = true;
      setState(() {});
      await UpdateCompany(
          Student_id!, companyNamee.text.trim(), locationn.text.trim());
      // await Working_place(Student_id!).then( setState(() {
      //   check = false;
      // }));
      setState(() {
        check = false;
      });

      num = 0;
      companyNamee.clear();
      locationn.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    String companyName = Workingplace_responce["company_name"];
    String location = Workingplace_responce["company_location"];

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
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
        num == 0
            ? Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(2, 2),
                              color: Color(0xFF003634),
                              blurRadius: 2,
                              spreadRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(24),
                        border: const Border(
                            top: BorderSide(color: Color(0xFF75C8A5), width: 2),
                            left:
                                BorderSide(color: Color(0xFF75C8A5), width: 2)),
                        gradient: const LinearGradient(
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
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const TextWidget2(
                                      data: 'Company Name : ',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  TextWidget2(
                                    data: companyName,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const TextWidget2(
                                      data: 'Location : ',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  TextWidget2(
                                    data: location,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(onPressed: changeCompany, data: 'Update'),
                      ButtonWidget(onPressed: delete, data: 'Delete'),
                    ],
                  ),
                ],
              )
            : IntrinsicHeight(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      // boxShadow: [
                      //   BoxShadow(offset: Offset(2,2),blurRadius: 2,spreadRadius: 2,)
                      // ],
                      border: const Border(
                          top: BorderSide(color: Color(0xFF88D59B)),
                          left: BorderSide(color: Color(0xFF88D59B)),
                          right: BorderSide(color: Color(0xFF88D59B)),
                          bottom: BorderSide(color: Color(0xFF88D59B)))),
                  // height: h * 0.36,
                  child: Form(
                    key: key,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextFieldWidget(
                            controller: companyNamee,
                            color: const Color(0xFF88D59B),
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
                              controller: locationn,
                              labelText: 'Location',
                              validator: (ele) {
                                if (ele!.isEmpty) {
                                  return 'Please enter the location';
                                } else {
                                  return null;
                                }
                              },
                              color: const Color(0xFF88D59B)),
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
                          const SizedBox(
                            height: 3,
                          ),
                          (check)
                              ? const CircularProgressIndicator()
                              : ButtonWidget(
                                  onPressed: saveDetails, data: 'Save')
                        ],
                      ),
                    ),
                  ),
                ),
              )
      ],
    );
  }
}
