import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';
class AdminSearch extends StatefulWidget {
  const AdminSearch({super.key});

  @override
  State<AdminSearch> createState() => _AdminSearchState();
}

class _AdminSearchState extends State<AdminSearch> {
  final cont=TextEditingController();
  final key=GlobalKey<FormState>();
  int contao=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF062525),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: key,
            child: Column(
        
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 300,),
                // TextWidget2(data: 'Enter Student ID', fontSize: 24, fontWeight: FontWeight.bold),
                Row(
                  children: [
                    Expanded(
                      child: TextFieldWidget(
                        controller: cont,
                        labelText: 'Roll Number',
                        color: Color(0xFF88D59B),
                        validator:(ele) {
                          if (ele!.isEmpty) {
                            return 'Please enter roll number';
                          } else if (ele.length < 10) {
                            return 'Please enter valid roll number';
                          } else {
                            return null;
                          }
                        }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,bottom: 2),
                      child: Card(
                        color: Color(0xFF88D59B),
                        child: IconButton(onPressed: ()async{
                              if (key.currentState!.validate()) {
                                    print('object');
                                    await Working_place2(cont.text.trim().toUpperCase(),);
                                    await Get_placement(cont.text.trim().toUpperCase());
                                    setState(() {
        
                                    });
                                  }
                        }, icon: Icon(Icons.search_rounded,color: Color(0xFF062525),)),
                      ),
                    ),
                  ],
                ),
                Workingplace_responce.isEmpty ? SizedBox() : Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: GestureDetector(
                    onTap: ()async{
                      await Working_place1(cont.text.trim().toUpperCase(),);
                      await Get_placement(cont.text.trim().toUpperCase());
                      cont.clear();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
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
                              colors: [Color(0xFF003B37), Color(0xFF00DD7E)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight)),
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
                                      data: 'Roll Number : ',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  TextWidget2(
                                    data:cont.text.trim(),
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  const TextWidget2(
                                      data: 'Company Name : ',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                  TextWidget2(
                                    data: Workingplace_responce["company_name"],
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
                                    data: Workingplace_responce["company_location"],
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
