import 'dart:convert';
import 'dart:io';
import 'dart:ui';
import 'package:alumniprofile/Profile_files/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;

String placement_api="https://apps.technicalhub.io/old/techpanel2/api/asp_placements_data/?id=16A91A0222";
String currentCompany_api="https://apps.technicalhub.io/old/techpanel2/api/asp_placements_data/get.php?id=16A91A0222";

List placement_responce=[];
Map Workingplace_responce={};
List updated_responce=[];

String? Student_id;


Get_placement(String UID) async
{
  Student_id=UID;
  await http.get(Uri.parse("https://apps.technicalhub.io/old/techpanel2/api/asp_placements_data/?id=$UID")).
  then((res) {
  if(res.statusCode==200)
    {
      placement_responce=jsonDecode(res.body);
      //print(placement_responce);

        Get.to(()=>MainPage(RollNumber: UID));

    }
  else if(res.statusCode>=400)
    {
      print("Network Error");
    }
  else{
    print("Network Error");
  }
  }).onError((error, stackTrace) {
    if(error is SocketException)
      {
        Get.snackbar('Warning!!',"please turn on mobile data",backgroundColor:Colors.red);
      }
  });
}

UpdateCompany(String UID,String company_name,String company_location ) async{
  print("HI");
  await http.post(Uri.parse("https://apps.technicalhub.io/old/techpanel2/api/asp_placements_data/post.php?roll_number=${UID}&company_name=${company_name}&company_location=${company_location}")).
  then((res){
    if(res.statusCode==200)
    {
      print("Updated broo");
      Workingplace_responce = {
        "company_name": company_name,
        "company_location": company_location
      };
      print("Working:  ${Workingplace_responce}");
      updated_responce= jsonDecode(res.body);
      print("Updated: ${updated_responce}");


    }
    else if(res.statusCode>=400)
    {
      print("Network Error");
    }
    else{
      print("Network Error");
    }
  }).onError((error, stackTrace) {
    if(error is SocketException)
    {
      Get.snackbar('Warning!!',"please turn on mobile data",backgroundColor:Colors.red);
    }
  });
}


Working_place(String UID) async
{

  await http.get(Uri.parse("https://apps.technicalhub.io/old/techpanel2/api/asp_placements_data/get.php?id=${UID}")).
  then((res) {
    if(res.statusCode==200)
    {
      Workingplace_responce=jsonDecode(res.body);
      print(Workingplace_responce);

      Get.to(()=>MainPage(RollNumber: UID));

    }
    else if(res.statusCode>=400)
    {
      print("Network Error");
    }
    else{
      print("Network Error");
    }
  }).onError((error, stackTrace) {
    if(error is SocketException)
    {
      Get.snackbar('Warning!!',"please turn on mobile data",backgroundColor:Colors.red);
    }
  });
}


class MyhttpError extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    // TODO: implement createHttpClient
    return super.createHttpClient(context)
        ..badCertificateCallback=(cerk,host,port)=>true;
  }
}