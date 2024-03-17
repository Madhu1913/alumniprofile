import 'package:alumniprofile/Current_working.dart';
import 'package:alumniprofile/Selected_companies.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {

  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin{

    late TabController tb;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tb = TabController(length: 2, vsync: this);
  }
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
              SizedBox(height: 10,),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                  height: 40,
                    width: w-50,
                    decoration: BoxDecoration(
                      // color: Color(),
                      borderRadius:BorderRadius.circular(360),
                      border: Border.all(
                        color: Color(0xFF61D883)
                      )
                    ),
                    child: TabBar(
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: const Color(0xFF88D59B),
                          fontFamily: 'Fredoka-VariableFont_wdth,wght',
                          fontWeight: FontWeight.w800),
                      labelColor: Color(0xFF062525),
                      unselectedLabelColor: Color(0xFF61D883),
                      controller: tb,
                      indicator: BoxDecoration(
                        color: Color(0xFF61D883),
                        borderRadius: BorderRadius.circular(360)
                      ),
                      tabs: [
                        Tab(text: "Placed Companies",),
                        Tab(text: "Work Place",),
                      ],
                    ),
                  ),
                ],
              ),
    
              SizedBox(
                height: 30,
              ),
    
              Container(
                // margin: EdgeInsets.all(50),
                height: h/2.2,
                width: w-50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFF61D883)
                  ),
                  borderRadius: BorderRadius.circular(30)
                ),
                padding: EdgeInsets.all(30),
                child: TabBarView(
                  controller: tb,
                  children: [
                      SelectedCompanies(),
                      Current_company()
                ],),
              ),
            ],
          ),
        ),
    );
  }
}