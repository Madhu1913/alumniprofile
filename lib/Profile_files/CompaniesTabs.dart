import 'package:alumniprofile/Profile_files/Tabs_view.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';

class CompaniesTabs extends StatefulWidget {
  final String name;
  const CompaniesTabs({super.key, required this.name});

  @override
  State<CompaniesTabs> createState() => _CompaniesTabsState();
}

class _CompaniesTabsState extends State<CompaniesTabs> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: w * 0.02,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: w * 0.055,
                  ),
                  TextWidget(
                    data: widget.name,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.010,
              ),
              Details(),
            ],
          ),
        ],
      ),
    );
  }
}