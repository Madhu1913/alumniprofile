import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return placement_responce.isNotEmpty ?NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (scroll){
        scroll.disallowIndicator();
        return false;
      },
      child:
      CarouselSlider.builder(
          // carouselController: _Controller,
          itemCount: placement_responce[0]['placed_companies'],
          itemBuilder: (context, index, realIndex) {
            return Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(offset: Offset(2,2),color: Color(0xFF003634),blurRadius: 2,spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(24),
                border: Border(top: BorderSide(color: Color(0xFF75C8A5),width: 2),left: BorderSide(color: Color(0xFF75C8A5),width: 2)),
                gradient: LinearGradient(colors: [Color(0xFF003634),Color(0xFF75C8A5)],begin: Alignment.topLeft,end: Alignment.bottomRight)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(height: 10,),
                        TextWidget2(data: placement_responce[0]['placed_data'][index]['package'].toString().substring(0,placement_responce[0]['placed_data'][index]['package'].toString().length-3),fontSize: 60,fontWeight: FontWeight.w700,),
                        TextWidget2(data: 'LPA', fontSize: 20),
                        SizedBox(height: 1,),
                        TextWidget(data:placement_responce[0]['placed_data'][index]['company_name'] ,fontSize: 22,fontWeight: FontWeight.w700,),
                        // SizedBox(height: 70,),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 15,bottom: 15),
                    child: Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding:EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(child: TextWidget1(data: '${placement_responce[0]['placed_data'][index]['role']}',fontSize: 14,fontWeight: FontWeight.w700,))
                        )
                      ],
                    ),
                  ),
                  // SizedBox(height: 10,)

                ],
              ),
            );
          },
          options: CarouselOptions(
              height: h*0.32,
              autoPlay: false,

              initialPage: 1,
              // viewportFraction:0.85,
              enlargeCenterPage: true,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              // enlargeStrategy: CenterPageEnlargeStrategy.zoom,
              )),

      // ListView.builder(
      // itemCount: placement_responce[0]['placed_companies'],
      //     itemBuilder: (context , ind){
      //       return Card(
      //         color: Color(0xFF062525).withOpacity(0.5),
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(30),
      //           // side: BorderSide(
      //           //   // color: Color(0xFF61D883).withOpacity(0.5),
      //           // )
      //         ),
      //         shadowColor: Color(0xFF062525),
      //         child: IntrinsicHeight(
      //           child: Container(
      //             margin: EdgeInsets.only(right: 10),
      //             padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(30),
      //               color: Color(0xFF61D883),
      //             ),
      //             width: w/2,
      //             // child: TextWidget(data: '$companyName ',),
      //             child: Padding(
      //               padding:  EdgeInsets.only(left: 10.0),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   SizedBox(height: 10,),
      //                   TextWidget1(data: placement_responce[0]['placed_data'][ind]['package'].toString().substring(0,placement_responce[0]['placed_data'][ind]['package'].toString().length-3),fontSize: 19,fontWeight: FontWeight.w700,),
      //
      //                   // SizedBox(height: 10,),
      //                   // TextWidget1(data:placement_responce[0]['placed_data'][ind]['company_name'] ,fontSize: 19,fontWeight: FontWeight.w700,),
      //                   // SizedBox(height: 4,),
      //                   // TextWidget1(data: 'with ${placement_responce[0]['placed_data'][ind]['package']}',fontSize: 19,fontWeight: FontWeight.w700,),
      //                   // SizedBox(height: 4,),
      //                   // TextWidget1(data: 'as ${placement_responce[0]['placed_data'][ind]['role']}',fontSize: 19,fontWeight: FontWeight.w700,),
      //                   // SizedBox(height: 10,)
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       );
      //     }),


    )


        : Center(child: TextWidget(data: 'No Data Found',fontSize: 20,fontWeight: FontWeight.w700,),)
    ;
  }
}
