import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/colors.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/strings.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/custom_shape_clipper.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightListingTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 160.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.firstColor, AppColors.secondColor]),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              elevation: 10.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            AppStrings.locations[0],
                            style: GoogleFonts.oxygen(fontSize: 16.0),
                          ),
                          Divider(thickness: 1.0, color: Colors.grey),
                          Text(
                            AppStrings.locations[1],
                            style: GoogleFonts.oxygen(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.import_export,
                        color: Colors.black,
                        size: 32.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
