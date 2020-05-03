import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChoiceChip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  const CustomChoiceChip({Key key, this.icon, this.text, this.isSelected})
      : super(key: key);

  @override
  _CustomChoiceChipState createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            )
          : null,
      child: Row(
        children: <Widget>[
          Icon(
            widget.icon,
            color: Colors.white,
            size: 20.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Text(
            widget.text,
            style: GoogleFonts.oxygen(color: Colors.white, fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
