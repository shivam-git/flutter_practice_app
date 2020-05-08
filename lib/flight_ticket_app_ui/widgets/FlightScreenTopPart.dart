import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/colors.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/strings.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/choice_chip.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/custom_shape_clipper.dart';
import 'package:google_fonts/google_fonts.dart';

import '../FlightListing.dart';

final _searchFieldController =
    TextEditingController(text: AppStrings.locations[1]);

class FlightScreenTopPart extends StatefulWidget {
  @override
  _FlightScreenTopPartState createState() => _FlightScreenTopPartState();
}

class _FlightScreenTopPartState extends State<FlightScreenTopPart> {
  var selectedLocation = 0;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.firstColor, AppColors.secondColor],
              ),
            ),
            height: 400.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: <Widget>[
                  topRow(),
                  SizedBox(height: 50.0),
                  Text(
                    AppStrings.labelText1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.oxygen(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      child: TextField(
                        controller: _searchFieldController,
                        style: AppColors.dropDownMenuStyle,
                        cursorColor: AppColors.firstColor,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 32.0, vertical: 14.0),
                            border: InputBorder.none,
                            suffixIcon: Material(
                              elevation: 4.0,
                              borderRadius: BorderRadius.circular(30.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FlightListingProvider(
                                        fromLocation: AppStrings
                                            .locations[selectedLocation],
                                        toLocation: _searchFieldController.text,
                                        child: FlightListing(),
                                      ),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        child: CustomChoiceChip(
                          icon: Icons.flight_takeoff,
                          text: "Flights",
                          isSelected: isSelected,
                        ),
                      ),
                      SizedBox(width: 20.0),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        child: CustomChoiceChip(
                          icon: Icons.hotel,
                          text: "Hotels",
                          isSelected: !isSelected,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget topRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.location_on,
            color: Colors.white,
          ),
          SizedBox(
            width: 16.0,
          ),
          popupMenuButton(),
          Spacer(),
          Icon(
            Icons.settings,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget popupMenuButton() {
    return PopupMenuButton(
      onSelected: (index) {
        setState(() {
          selectedLocation = index;
        });
      },
      child: Row(
        children: <Widget>[
          Text(
            AppStrings.locations[selectedLocation],
            style: AppColors.dropDownLabelStyle,
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ],
      ),
      itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
        PopupMenuItem(
          child: Text(
            AppStrings.locations[0],
            style: AppColors.dropDownMenuStyle,
          ),
          value: 0,
        ),
        PopupMenuItem(
          child: Text(
            AppStrings.locations[1],
            style: AppColors.dropDownMenuStyle,
          ),
          value: 1,
        ),
      ],
    );
  }
}
