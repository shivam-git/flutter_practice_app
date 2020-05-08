import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/colors.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/FlightListingBottomPart.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/FlightListingTopPart.dart';

class FlightListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.firstColor,
        title: Text("Search Result"),
        centerTitle: true,
        leading: InkWell(
            onTap: () => Navigator.pop(context), child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: Column(
          children: <Widget>[
            FlightListingTopPart(),
            SizedBox(height: 10.0),
            FlightListingBottomPart()
          ],
        ),
      ),
    );
  }
}
