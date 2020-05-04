import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;

  const CityCard(
      {Key key,
      this.imagePath,
      this.cityName,
      this.monthYear,
      this.discount,
      this.oldPrice,
      this.newPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 210.0,
                  width: 160.0,
                  child: Image.asset(
                    "assets/images/$imagePath",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 0.0,
                    bottom: 0.0,
                    height: 60.0,
                    width: 160.0,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.1)
                          ])),
                    )),
                Positioned(
                    left: 10.0,
                    bottom: 10.0,
                    right: 10.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              cityName,
                              style: GoogleFonts.oxygen(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              monthYear,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.oxygen(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 2.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            "$discount%",
                            style: GoogleFonts.oxygen(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(width: 15.0),
              Text(
                "\$$newPrice",
                style: GoogleFonts.oxygen(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
              SizedBox(width: 5.0),
              Text(
                "(\$$oldPrice)",
                style: GoogleFonts.oxygen(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                  decoration: TextDecoration.lineThrough
                ),
              )
            ])
      ],
    );
  }
}
