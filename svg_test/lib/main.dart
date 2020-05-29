import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:svg_test/styles/my_icons.dart';

import 'styles/my_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SVG File Test',
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Color(0xFFFFFFFF),
        child: SvgPicture.asset(iconList),
      ),
    );
  }
}