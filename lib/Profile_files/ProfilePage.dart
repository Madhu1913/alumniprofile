import 'package:alumniprofile/Profile_files/Widgets.dart';
import 'package:flutter/material.dart';
import 'package:glowy_borders/glowy_borders.dart';
import 'package:get/get.dart';
import 'dart:ui'as ui;

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  String name = 'Sobha Rani Nethala';
  String number = '987654321';
  String email = 'Dummy@gmail.com';
  String linkedin = 'Dummy@gmail.com';
  AnimationController? _controller;
  Animation? up;
  Animation? up2;
  Animation? down;
  Animation? br;
  Animation? side;
  bool one = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this , duration: Duration(milliseconds: 600));
    up = Tween<double>(begin: Get.height/2 , end: ((Get.height/1) - (1.8*Get.height/4))).animate(_controller!);
    up2 = Tween<double>(begin: Get.height/2 , end: Get.height/1).animate(_controller!);
    down = Tween<double>(begin: 1 , end: 4).animate(_controller!);
    br = Tween<double>(begin: 0 , end: 360).animate(_controller!);
    side = Tween<double>(begin: 0 , end: ((Get.width/2) - (Get.width/8))).animate(_controller!);

  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: h * 0.5+150,
              width: w,
              child: const Image(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2024/01/15/04/30/woman-8509281_960_720.jpg'),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
            Container(
              child:  CustomPaint(
                size: Size(w,(w*2.3333333333333335).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(),
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
                  top: 360,
                  child: Container(
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
                                  data: name,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.010,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.phone_in_talk_rounded,
                                    color: Color(0xFF88D59B)),
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
                                    color: Color(0xFF88D59B)),
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
                                const Icon(Icons.system_update_tv_rounded,
                                    color: Color(0xFF88D59B)),
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
              top: 620,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: AnimatedGradientBorder(
                    glowSize: 2,
                    animationTime: 3,
                    borderSize: 1,
                    gradientColors: [const Color(0xff3F6748), const Color(0xFF68E88C)],
                    borderRadius: BorderRadius.circular(999),
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
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color(0xFF062525)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(0,size.height*0.4242857);
    path_0.cubicTo(size.width*0.0306667,size.height*0.3605286,size.width*0.15,size.height*0.4085571,size.width*0.152,size.height*0.41);
    path_0.cubicTo(size.width*0.3737000,size.height*0.5069286,size.width*0.4811333,size.height*0.4994714,size.width*0.5022667,size.height*0.5019286);
    path_0.cubicTo(size.width*0.5782000,size.height*0.5043714,size.width*0.7494667,size.height*0.4840143,size.width*0.8300000,size.height*0.5185714);
    path_0.cubicTo(size.width*0.8697667,size.height*0.5350714,size.width*0.8999667,size.height*0.5759429,size.width*1.0066667,size.height*0.5657143);
    path_0.quadraticBezierTo(size.width*1.0058333,size.height*0.6739286,size.width*1.0033333,size.height*0.9985714);
    path_0.lineTo(size.width*-0.0081667,size.height*1.0033429);
    path_0.quadraticBezierTo(size.width*-0.0061250,size.height*0.8585786,0,size.height*0.4242857);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xFF88D59B)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.007
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    }

}
