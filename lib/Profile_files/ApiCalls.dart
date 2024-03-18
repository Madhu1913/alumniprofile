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
List currentCompany_responce=[];

Get_placement(String UID) async
{ print("HI");
  await http.get(Uri.parse("https://apps.technicalhub.io/old/techpanel2/api/asp_placements_data/?id=$UID")).
  then((res) {
  if(res.statusCode==200)
    {
      placement_responce=jsonDecode(res.body);
      print(placement_responce);

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