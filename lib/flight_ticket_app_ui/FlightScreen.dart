import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/FlightScreenTopPart.dart';

class FlightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FlightScreenTopPart(),
        ],
      ),
    );
  }
}
