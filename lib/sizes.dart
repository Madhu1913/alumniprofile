import 'package:flutter/material.dart';

class Sizes extends StatefulWidget {
  const Sizes({super.key});

  @override
  State<Sizes> createState() => _SizesState();
}

class _SizesState extends State<Sizes> {
  @override
  Widget build(BuildContext context) {

    int h = MediaQuery.of(context).size.height.toInt();
    int w = MediaQuery.of(context).size.width.toInt();

    return const Placeholder();
  }
}
