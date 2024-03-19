import 'package:alumniprofile/Profile_files/ApiCalls.dart';
import 'package:alumniprofile/Profile_files/Current_working.dart';
import 'package:alumniprofile/Profile_files/EditWorkingPlace.dart';
import 'package:alumniprofile/Profile_files/FillWorkingPlace.dart';
import 'package:alumniprofile/Profile_files/Selected_companies.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {

  final index;
  const Details({
    required this.index,
    super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin{

    late TabController tb;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tb = TabController(length: 2, vsync: this , initialIndex: widget.index);
  }
  String? companyName=Workingplace_responce["company_name"];

  @override
  Widget build(BuildContext context) {


    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();

    return Container(
        height: h/1,
        width: w/1,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //     colors: [
        //       Color(0xFF062525),
        //       Color(0xFF0B4948),
        //     ]
        //   ),
        // ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                  height: 50,
                    width: w-50,
                    decoration: BoxDecoration(
                      // color: Color(),
                      borderRadius:BorderRadius.circular(15),
                      border: Border.all(
                        color: Color(0xFF61D883)
                      )
                    ),
                    child: TabBar(
                      isScrollable: false,
                      // physics: ScrollPhysics(),
                      
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF88D59B),
                          fontFamily: 'Fredoka-VariableFont_wdth,wght',
                          fontWeight: FontWeight.w800),
                      labelColor: Color(0xFF062525),
                      unselectedLabelColor: Colors.white,
                      controller: tb,
                      indicator: BoxDecoration(
                        color: Color(0xFF61D883),
                        // gradient: RadialGradient(colors: []),
                        borderRadius: BorderRadius.circular(14)
                      ),

                      tabs: [
                        Tab(child: Text("Placed\nCompanies",textAlign: TextAlign.center,),),
                        Tab(child: Text("Work\nPlace",textAlign: TextAlign.center,),),
                      ],
                    ),
                  ),
                ],
              ),
    
              // SizedBox(
              //   height: 30,
              // ),

              NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (scroll){
                  scroll.disallowIndicator();
                  return false;
                },
                child: Container(
                  // margin: EdgeInsets.all(50),
                  height: h/2.1,
                  width: w-50,
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   // color: widget.index == 0 ? Colors.transparent : Color(0xFF61D883)
                    // ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(18),
                  child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: tb,
                    children: [
                        SelectedCompanies(),
                        companyName!=null ? Current_company() : FillWorkingPlace()
                  ],),
                ),
              ),
            ],
          ),
        ),
    );
  }
}