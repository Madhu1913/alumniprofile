import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String data;
  final double fontSize;
  final FontWeight? fontWeight;
  const TextWidget(
      {super.key, required this.data, required this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF88D59B),
          fontFamily: 'Fredoka-VariableFont_wdth,wght',
          fontWeight: fontWeight),
    );
  }
}

class TextWidget2 extends StatelessWidget {
  final String data;
  final double fontSize;
  final FontWeight? fontWeight;
  const TextWidget2(
      {super.key, required this.data, required this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontFamily: 'Fredoka-VariableFont_wdth,wght',
          fontWeight: fontWeight),
    );
  }
}

class TextWidget1 extends StatelessWidget {
  final String data;
  final double fontSize;
  final FontWeight fontWeight;
  const TextWidget1({
    super.key,
    required this.data,
    required this.fontSize,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: fontSize,
          color: const Color(0xFF062525),
          fontFamily: 'Fredoka-VariableFont_wdth,wght',
          overflow: TextOverflow.visible,
          fontWeight: fontWeight),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String data;
  const ButtonWidget({super.key, required this.onPressed, required this.data});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xFF88D59B)),
        onPressed: onPressed,
        child: TextWidget1(
          data: data,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ));
  }
}

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final Color color;

  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.validator,
      required this.color});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        cursorColor: Colors.white,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Fredoka-VariableFont_wdth,wght',
        ),
        keyboardType: TextInputType.text,
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
            // constraints: BoxConstraints(maxHeight: 40,minHeight: 40),
            // contentPadding: EdgeInsets.symmetric(vertical: 90),
            border: border(),
            enabledBorder: border(),
            disabledBorder: border(),
            focusedBorder: border(),
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: widget.color,
              fontFamily: 'Fredoka-VariableFont_wdth,wght',
            )),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: widget.color, width: 1));
  }
}
