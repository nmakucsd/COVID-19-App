import 'package:covid_19/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:  kPrimaryColor.withOpacity(.03),
          leading: IconButton(
        icon: SvgPicture.asset("covid_19/assets/menu.svg"),
        onPressed: () {},
      )),
    );
  }
}
