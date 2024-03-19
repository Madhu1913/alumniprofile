import 'package:alumniprofile/Profile_files/CompaniesTabs.dart';
import 'package:alumniprofile/Profile_files/Tabs_view.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'EditPage.dart';
import 'Widgets.dart';

class ProfileDetails extends StatefulWidget {
  final index;
  final int x;
  final int? admin;
  const ProfileDetails({super.key, required this.x, required this.index, this.admin});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  String name = 'S V V D Ganapathi';
  String number = '987654321';
  String email = 'Dummy@gmail.com';
  String linkedin = 'Dummy@gmail.com';
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF88D59B),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF88D59B),
          leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF062525),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            // alignment: Alignment(-1,0),
            children: [
              SizedBox(
                height: w + 190,
                //   elevation: 20,
                // shadowColor: Colors.black,
                child: CustomPaint(
                  size: Size(
                      w,
                      (w * 2.3333333333333335)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter2(),
                ),
              ),
              SizedBox(
                height: w + 250,
                //   elevation: 20,
                // shadowColor: Colors.black,
                child: CustomPaint(
                  size: Size(
                      w,
                      (w * 2.3333333333333335)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter1(),
                ),
              ),
              Container(
                child: CustomPaint(
                  size: Size(
                      w,
                      (w * 2.3333333333333335)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: 1,
                    child: CircleAvatar(
                      radius: w / 4.5,
                      backgroundImage:
                          const AssetImage('assets/images/ganapathi.jpg'),
                    ),
                  ),
                ],
              ),
              widget.x == 1
                  ? Positioned(
                      top: h * 0.115,
                      child: CompaniesTabs(
                        name: name,
                        index: widget.index,
                        admin: widget.admin,
                      ))
                  : Positioned(
                      top: h * 0.285, left: w * 0.109, child: const EditPage())
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0), Offset(size.width, size.height), [
        const Color(0xFF062525),
        const Color(0xFF0B4849),
      ])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0010000, size.height * 0.0188000);
    path_0.quadraticBezierTo(size.width * 0.0326500, size.height * -0.0037125,
        size.width * 0.0704000, size.height * 0.0040500);
    path_0.cubicTo(
        size.width * 0.1245250,
        size.height * 0.0222375,
        size.width * 0.1565750,
        size.height * 0.0619625,
        size.width * 0.1925000,
        size.height * 0.0808000);
    path_0.cubicTo(
        size.width * 0.2308750,
        size.height * 0.1063000,
        size.width * 0.2868750,
        size.height * 0.1262500,
        size.width * 0.3260000,
        size.height * 0.1368000);
    path_0.cubicTo(
        size.width * 0.3636500,
        size.height * 0.1458625,
        size.width * 0.4180000,
        size.height * 0.1577625,
        size.width * 0.4547500,
        size.height * 0.1627000);
    path_0.quadraticBezierTo(size.width * 0.5126250, size.height * 0.1718875,
        size.width * 0.6145000, size.height * 0.1723000);
    path_0.lineTo(size.width * 0.7180000, size.height * 0.1708000);
    path_0.quadraticBezierTo(size.width * 0.7882500, size.height * 0.1683000,
        size.width * 0.8250000, size.height * 0.1698000);
    path_0.cubicTo(
        size.width * 0.8908750,
        size.height * 0.1723000,
        size.width * 0.9232750,
        size.height * 0.1816500,
        size.width * 0.9510500,
        size.height * 0.1930750);
    path_0.quadraticBezierTo(size.width * 0.9722500, size.height * 0.2011125,
        size.width * 1.0025000, size.height * 0.2200500);
    path_0.lineTo(size.width * 1.0021000, size.height * 0.5374000);
    path_0.lineTo(size.width * 0.0040000, size.height * 0.5370000);
    path_0.lineTo(size.width * 0.0025000, size.height * 0.5360000);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF0B4849), const Color(0xFF062525)])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0025000, size.height * 0.4807000);
    path_1.lineTo(size.width * 1.0015000, size.height * 0.4771125);
    path_1.lineTo(size.width * 1.0055000, size.height * 1.0063125);
    path_1.lineTo(size.width * 0.0015000, size.height * 1.0092500);

    canvas.drawPath(path_1, paintFill1);

    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF0B4849), const Color(0xFF062525)])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0010000, size.height * 0.0188000);
    path_0.quadraticBezierTo(size.width * 0.0326500, size.height * -0.0037125,
        size.width * 0.0704000, size.height * 0.0040500);
    path_0.cubicTo(
        size.width * 0.1245250,
        size.height * 0.0222375,
        size.width * 0.1565750,
        size.height * 0.0619625,
        size.width * 0.1925000,
        size.height * 0.0808000);
    path_0.cubicTo(
        size.width * 0.2308750,
        size.height * 0.1063000,
        size.width * 0.2868750,
        size.height * 0.1262500,
        size.width * 0.3260000,
        size.height * 0.1368000);
    path_0.cubicTo(
        size.width * 0.3636500,
        size.height * 0.1458625,
        size.width * 0.4180000,
        size.height * 0.1577625,
        size.width * 0.4547500,
        size.height * 0.1627000);
    path_0.quadraticBezierTo(size.width * 0.5126250, size.height * 0.1718875,
        size.width * 0.6145000, size.height * 0.1723000);
    path_0.lineTo(size.width * 0.7180000, size.height * 0.1708000);
    path_0.quadraticBezierTo(size.width * 0.7882500, size.height * 0.1683000,
        size.width * 0.8250000, size.height * 0.1698000);
    path_0.cubicTo(
        size.width * 0.8908750,
        size.height * 0.1723000,
        size.width * 0.9232750,
        size.height * 0.1816500,
        size.width * 0.9510500,
        size.height * 0.1930750);
    path_0.quadraticBezierTo(size.width * 0.9722500, size.height * 0.2011125,
        size.width * 1.0025000, size.height * 0.2200500);
    path_0.lineTo(size.width * 1.0021000, size.height * 0.5374000);
    path_0.lineTo(size.width * 0.0040000, size.height * 0.5370000);
    path_0.lineTo(size.width * 0.0025000, size.height * 0.5360000);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF0B4849), const Color(0xFF062525)])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0025000, size.height * 0.4807000);
    path_1.lineTo(size.width * 1.0015000, size.height * 0.4771125);
    path_1.lineTo(size.width * 1.0055000, size.height * 1.0063125);
    path_1.lineTo(size.width * 0.0015000, size.height * 1.0092500);

    canvas.drawPath(path_1, paintFill1);

    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF0B4849), const Color(0xFF062525)])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0010000, size.height * 0.0188000);
    path_0.quadraticBezierTo(size.width * 0.0326500, size.height * -0.0037125,
        size.width * 0.0704000, size.height * 0.0040500);
    path_0.cubicTo(
        size.width * 0.1245250,
        size.height * 0.0222375,
        size.width * 0.1565750,
        size.height * 0.0619625,
        size.width * 0.1925000,
        size.height * 0.0808000);
    path_0.cubicTo(
        size.width * 0.2308750,
        size.height * 0.1063000,
        size.width * 0.2868750,
        size.height * 0.1262500,
        size.width * 0.3260000,
        size.height * 0.1368000);
    path_0.cubicTo(
        size.width * 0.3636500,
        size.height * 0.1458625,
        size.width * 0.4180000,
        size.height * 0.1577625,
        size.width * 0.4547500,
        size.height * 0.1627000);
    path_0.quadraticBezierTo(size.width * 0.5126250, size.height * 0.1718875,
        size.width * 0.6145000, size.height * 0.1723000);
    path_0.lineTo(size.width * 0.7180000, size.height * 0.1708000);
    path_0.quadraticBezierTo(size.width * 0.7882500, size.height * 0.1683000,
        size.width * 0.8250000, size.height * 0.1698000);
    path_0.cubicTo(
        size.width * 0.8908750,
        size.height * 0.1723000,
        size.width * 0.9232750,
        size.height * 0.1816500,
        size.width * 0.9510500,
        size.height * 0.1930750);
    path_0.quadraticBezierTo(size.width * 0.9722500, size.height * 0.2011125,
        size.width * 1.0025000, size.height * 0.2200500);
    path_0.lineTo(size.width * 1.0021000, size.height * 0.5374000);
    path_0.lineTo(size.width * 0.0040000, size.height * 0.5370000);
    path_0.lineTo(size.width * 0.0025000, size.height * 0.5360000);

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..shader = ui.Gradient.linear(
          const Offset(0, 0),
          Offset(size.width, size.height),
          [const Color(0xFF0B4849), const Color(0xFF062525)])
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0025000, size.height * 0.4807000);
    path_1.lineTo(size.width * 1.0015000, size.height * 0.4771125);
    path_1.lineTo(size.width * 1.0055000, size.height * 1.0063125);
    path_1.lineTo(size.width * 0.0015000, size.height * 1.0092500);

    canvas.drawPath(path_1, paintFill1);

    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
