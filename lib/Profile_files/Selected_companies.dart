import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';

import 'ApiCalls.dart';

class SelectedCompanies extends StatefulWidget {
  const SelectedCompanies({super.key});

  @override
  State<SelectedCompanies> createState() => _SelectedCompaniesState();
}

class _SelectedCompaniesState extends State<SelectedCompanies> {

  // var com_det = ["Hello" , "Hi" , "Swaroop"];
  // String companyName='Tech Mahindra';
  // String ctc='5.5 LPA';
  // String role='DEVELOPER';


  @override
  Widget build(BuildContext context) {

    int w = MediaQuery.of(context).size.width.toInt();

    return placement_responce.isNotEmpty ?NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (scroll){
        scroll.disallowIndicator();
        return false;
      },
      child: ListView.builder(
        itemCount: placement_responce[0]['placed_companies'],
        itemBuilder: (context , ind){
        return IntrinsicHeight(
          child: Card(
            color: Color(0xFF062525).withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              // side: BorderSide(
              //   // color: Color(0xFF61D883).withOpacity(0.5),
              // )
            ),
            shadowColor: Color(0xFF062525),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: w/2,
              decoration: BoxDecoration(
                color: Color(0xFF61D883),
                borderRadius: BorderRadius.circular(30),
                // boxShadow : [
                //   BoxShadow(
                //     color: Colors.black38,
                //     offset: Offset(-1, -1),
                //     spreadRadius: 10
                //   )
                // ]
              ),
              child: IntrinsicHeight(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFF61D883),
                  ),
                  width: w/2,
                  // child: TextWidget(data: '$companyName ',),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10,),
                        TextWidget1(data:placement_responce[0]['placed_data'][ind]['company_name'] ,fontSize: 19,fontWeight: FontWeight.w700,),
                        SizedBox(height: 4,),
                        TextWidget1(data: 'with ${placement_responce[0]['placed_data'][ind]['package']}',fontSize: 19,fontWeight: FontWeight.w700,),
                        SizedBox(height: 4,),
                        TextWidget1(data: 'as ${placement_responce[0]['placed_data'][ind]['role']}',fontSize: 19,fontWeight: FontWeight.w700,),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    ): Center(child: TextWidget(data: 'No Data Found',fontSize: 20,fontWeight: FontWeight.w700,),)
    ;
  }
}
