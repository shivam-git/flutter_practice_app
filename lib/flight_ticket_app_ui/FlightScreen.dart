import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/strings.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/FlightScreenTopPart.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/custom_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'res/colors.dart';

class FlightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          FlightScreenTopPart(),
          flightScreenBottomPart,
        ],
      ),
    );
  }
}

var flightScreenBottomPart = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 10.0, top: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Currently Watched Items",
            style: AppColors.dropDownMenuStyle,
          ),
          Spacer(),
          Text(
            "View All (12)",
            style:
                GoogleFonts.oxygen(color: AppColors.firstColor, fontSize: 14.0),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical:20.0),
      height: 250.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: AppStrings.cityCards,
      ),
    )
  ],
);
