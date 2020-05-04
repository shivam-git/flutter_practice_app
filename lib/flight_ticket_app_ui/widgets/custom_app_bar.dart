import 'package:flutter/material.dart';
import 'package:flutter_practice_app/flight_ticket_app_ui/res/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  CustomAppBar() {
    bottomBarItems.add(
      BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: AppColors.firstColor,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title:
              Text("Explor", style: GoogleFonts.oxygen(color: Colors.black))),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.black,
          ),
          title: Text("Watchlist",
              style: GoogleFonts.oxygen(color: Colors.black))),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
          icon: Icon(
            Icons.local_offer,
            color: Colors.black,
          ),
          title: Text("Deals", style: GoogleFonts.oxygen(color: Colors.black))),
    );
    bottomBarItems.add(
      BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          title: Text("Notifications",
              style: GoogleFonts.oxygen(color: Colors.black))),
    );
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 3,
      type: BottomNavigationBarType.shifting,
      items: bottomBarItems,
    );
  }
}
