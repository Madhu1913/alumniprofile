import 'package:alumniprofile/Profile_files/Profiles_Details.dart';
import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui;

class MainPage extends StatefulWidget {
  final String? RollNumber;
  const MainPage({super.key, this.RollNumber});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String name = ' S V V D Ganapathi';
  String number = '987654321';
  String email = 'Dummy@gmail.com';
  String linkedin = 'Dummy@gmail.com';

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Hero(
          tag: 1,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                SizedBox(
                  height: h * 0.5 + 150,
                  width: w,
                  child: const Image(
                    image: AssetImage("assets/images/ganapathi.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                SizedBox(
                  height: 700,
                  child: CustomPaint(
                    size: Size(
                        w,
                        (w * 2.3333333333333335)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ),
                Container(
                  child: CustomPaint(
                    size: Size(
                        w,
                        (w * 2.3333333333333335)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter1(),
                  ),
                ),
                // Positioned(
                //   bottom: 0,
                //   child: Container(
                //     // color: Colors.blue,
                //     height: h * 0.5 + 100,
                //     width: w,
                //     decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //             colors: [Color(0xFF0B4849), Color(0xFF062525)],
                //             begin: Alignment.topLeft,
                //             end: Alignment.bottomRight),
                //         borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(28),
                //             topRight: Radius.circular(28))),
                //     child:
                Positioned(
                  top: h * 0.47,
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: w * 0.025,
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
                                Text(
                                  name,
                                  style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily:
                                        'Fredoka-VariableFont_wdth,wght',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.010,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: w * 0.024,
                                ),
                                const Icon(Icons.person,
                                    size: 27, color: Colors.white),
                                SizedBox(
                                  width: w * 0.025,
                                ),
                                TextWidget(
                                  data: widget.RollNumber!,
                                  fontSize: 18,
                                ),
                                SizedBox(
                                  width: w * 0.18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: h * 0.010,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.phone_in_talk_rounded,
                                    color: Colors.white),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                TextWidget(
                                  data: number,
                                  fontSize: 18,
                                ),
                                SizedBox(
                                  width: w * 0.18,
                                )
                              ],
                            ),
                            SizedBox(
                              height: h * 0.010,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.mail_outline_rounded,
                                    color: Colors.white),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                TextWidget(
                                  data: email,
                                  fontSize: 18,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.010,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.mail_outline_rounded,
                                    color: Colors.white),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                TextWidget(
                                  data: linkedin,
                                  fontSize: 18,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //   ),
                // ),

                Positioned(
                  top: h * 0.78,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ProfileDetails(
                                          x: 2,
                                          index: 0,
                                        )));
                          },
                          child: SizedBox(
                            height: h * 0.06,
                            width: w * 0.3,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFF88D59B)),
                                  borderRadius: BorderRadius.circular(999),
                                  color: const Color(0xFF062525)),
                              child: const Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget(
                                    data: 'Edit',
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3, top: 2),
                                    child: Icon(
                                      Icons.mode_edit_rounded,
                                      size: 19,
                                      color: Color(0xFF88D59B),
                                    ),
                                  ),
                                  // SizedBox(width: 4,),
                                ],
                              )),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: AnimatedGradientBorder(
                            glowSize: 2,
                            animationTime: 3,
                            borderSize: 1,
                            gradientColors: const [
                              Color(0xff3F6748),
                              Color(0xFF68E88C)
                            ],
                            borderRadius: BorderRadius.circular(999),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfileDetails(
                                              x: 1,
                                              index: 0,
                                            )));
                              },
                              child: SizedBox(
                                height: h * 0.07,
                                width: w * 0.91,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(999),
                                      color: const Color(0xFF062525)),
                                  child: const Center(
                                      child: TextWidget(
                                    data: 'Placed Companies/Work Place',
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                              ),
                            )),
                      ),
                    ],
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF062525), const Color(0xFF062525)])
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0050000, size.height * 0.4800000);
    path_0.quadraticBezierTo(size.width * 0.0326500, size.height * 0.4574875,
        size.width * 0.0704000, size.height * 0.4652500);
    path_0.cubicTo(
        size.width * 0.1245250,
        size.height * 0.4834375,
        size.width * 0.1565750,
        size.height * 0.5231625,
        size.width * 0.1925000,
        size.height * 0.5420000);
    path_0.cubicTo(
        size.width * 0.2308750,
        size.height * 0.5675000,
        size.width * 0.2868750,
        size.height * 0.5874500,
        size.width * 0.3260000,
        size.height * 0.5980000);
    path_0.cubicTo(
        size.width * 0.3636500,
        size.height * 0.6070625,
        size.width * 0.4180000,
        size.height * 0.6189625,
        size.width * 0.4547500,
        size.height * 0.6239000);
    path_0.quadraticBezierTo(size.width * 0.5126250, size.height * 0.6330875,
        size.width * 0.6145000, size.height * 0.6335000);
    path_0.lineTo(size.width * 0.7180000, size.height * 0.6320000);
    path_0.quadraticBezierTo(size.width * 0.7882500, size.height * 0.6295000,
        size.width * 0.8250000, size.height * 0.6310000);
    path_0.cubicTo(
        size.width * 0.8908750,
        size.height * 0.6335000,
        size.width * 0.9232750,
        size.height * 0.6428500,
        size.width * 0.9510500,
        size.height * 0.6542750);
    path_0.quadraticBezierTo(size.width * 0.9722500, size.height * 0.6623125,
        size.width * 1.0025000, size.height * 0.6812500);
    path_0.lineTo(size.width * 0.9990000, size.height);
    path_0.lineTo(size.width * 0.0025000, size.height);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color(0xFF88D59B)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF062525), const Color(0xFF062525)])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0108750, size.height * 0.7842125);
    path_0.lineTo(size.width * 1.0030250, size.height * 0.7841500);
    path_0.lineTo(size.width * 1.0105250, size.height * 0.9987500);
    path_0.lineTo(size.width * -0.0001750, size.height * 0.9988375);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF062525), const Color(0xFF062525)])
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
