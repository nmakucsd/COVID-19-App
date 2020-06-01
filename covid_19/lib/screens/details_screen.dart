import 'package:covid_19/constants.dart';
import 'package:covid_19/styles/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildDetailsAppBar(context),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 21),
                        blurRadius: 53,
                        color: Colors.black.withOpacity(0.05),
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      buildTitleWithMoreIcon(),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Text(
                            "547",
                            style: Theme.of(context)
                                .textTheme
                                .display3
                                .copyWith(color: kPrimaryColor, height: 1.2),
                          ),
                          Text(
                            "5.9%",
                            style: TextStyle(color: kPrimaryColor),
                          ),
                          SvgPicture.asset(iconIncrease)
                        ],
                      )
                    ],
                  ),
                )
              ],
            )));
  }

  Row buildTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "New Cases",
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset(iconMore)
      ],
    );
  }

  AppBar buildDetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(iconSearch),
          onPressed: () {},
        ),
      ],
    );
  }
}
