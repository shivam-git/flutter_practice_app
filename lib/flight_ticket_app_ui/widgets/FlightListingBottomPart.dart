import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class FlightListingBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Text(
                "Best Deals for Next 6 Months",
                style: AppColors.dropDownMenuStyle,
              ),
            ),
            SizedBox(height: 10.0),
            ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: <Widget>[
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                  FlightCard(),
                ])
          ]),
    );
  }
}

class FlightCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: AppColors.flightBorderColor)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "\$4999  ",
                          style: GoogleFonts.oxygen(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "(\$9999)",
                          style: GoogleFonts.oxygen(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 8.0,
                      children: <Widget>[
                        FlightInfoChip(
                            icon: Icons.calendar_today, title: 'June 2019'),
                        FlightInfoChip(
                            icon: Icons.flight_takeoff, title: 'Air Asia'),
                        FlightInfoChip(icon: Icons.star, title: '4.4'),
                      ],
                    )
                  ]),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                '55%',
                style: GoogleFonts.oxygen(
                  color: AppColors.firstColor,
                  fontSize: 14.0,
                ),
              ),
              decoration: BoxDecoration(
                  color: AppColors.discountBackgoundColor,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          )
        ],
      ),
    );
  }
}

class FlightInfoChip extends StatelessWidget {
  final IconData icon;
  final String title;

  const FlightInfoChip({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(
        title,
      ),
      labelStyle: GoogleFonts.oxygen(color: Colors.black, fontSize: 14.0),
      avatar: Icon(
        icon,
        size: 14.0,
      ),
      backgroundColor: AppColors.chipBackgoundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
