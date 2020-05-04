import 'package:flutter_practice_app/flight_ticket_app_ui/widgets/city_card.dart';

class AppStrings {
  AppStrings._();

  static const List<String> locations = ['Boston (BOS)', 'New York City (JFK)'];

  static const String labelText1 = 'Where would\nyou want to go?';

  static const List<CityCard> cityCards = [
    CityCard(
      imagePath: "lasvegas.jpg",
      cityName: "Las Vegas",
      monthYear: "Feb 2019",
      discount: "45",
      oldPrice: "4299",
      newPrice: "2250",
    ),
    CityCard(
      imagePath: "athens.jpg",
      cityName: "Athens",
      monthYear: "Apr 2019",
      discount: "50",
      oldPrice: "9999",
      newPrice: "3350",
    ),
    CityCard(
      imagePath: "sydney.jpg",
      cityName: "Sydney",
      monthYear: "Dec 2019",
      discount: "40",
      oldPrice: "5999",
      newPrice: "2650",
    ),
  ];
}
