import 'package:flutter/material.dart';
import 'package:flutter_practice_app/models/pet_model.dart';

class AdoptPetScreen extends StatefulWidget {
  final Pet pet;

  const AdoptPetScreen({Key key, this.pet}) : super(key: key);

  @override
  _AdoptPetScreenState createState() => _AdoptPetScreenState();
}

class _AdoptPetScreenState extends State<AdoptPetScreen> {
  var fontName = 'Montserrat';

  Widget _buildInfoCard(String feature, String info) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 100.0,
      decoration: BoxDecoration(
          color: Color(0xFFF8F2F7),
          borderRadius: BorderRadius.circular(20.0),
          border: null),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            feature,
            style: TextStyle(
                fontFamily: fontName,
                color: Theme.of(context).primaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            info,
            style: TextStyle(
                fontFamily: fontName,
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: widget.pet.id,
                  child: Container(
                    width: double.infinity,
                    height: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.pet.imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 10.0),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    widget.pet.name,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: fontName),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).primaryColor,
                        size: 30.0,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                widget.pet.description,
                style: TextStyle(fontFamily: fontName, color: Colors.grey),
              ),
            ),
            Container(
              height: 120.0,
              margin: EdgeInsets.only(top: 30.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 30.0,
                  ),
                  _buildInfoCard('Age', '${widget.pet.age}'),
                  _buildInfoCard('Sex', '${widget.pet.sex}'),
                  _buildInfoCard('Color', '${widget.pet.color}'),
                  _buildInfoCard('ID', '${widget.pet.id}'),
                ],
              ),
            ),
            Container(
              height: 90.0,
              width: double.infinity,
              margin: EdgeInsets.only(top: 20.0, left: 20.0),
              decoration: BoxDecoration(
                color: Color(0xFFFFF2D0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0)),
              ),
              child: ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                leading: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      height: 40.0,
                      width: 40.0,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.pet.owner.imageUrl),
                    ),
                  ),
                ),
                title: Text(
                  owner.name,
                  style: TextStyle(
                      fontFamily: fontName, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Owner',
                  style: TextStyle(
                      fontFamily: fontName,
                      color: Theme.of(context).primaryColor),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text(
                    '1.68 km',
                    style: TextStyle(
                        fontFamily: fontName,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
              ),
//
//              Row(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                children: <Widget>[
//                  SizedBox(
//                    width: 30.0,
//                  ),
//                  CircleAvatar(
//                    child: ClipOval(
//                      child: Image(
//                        image: AssetImage(widget.pet.owner.imageUrl),
//                      ),
//                    ),
//                  ),
//                  SizedBox(
//                    width: 20.0,
//                  ),
//                  Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        widget.pet.owner.name,
//                        style: TextStyle(
//                            fontFamily: fontName,
//                            color: Colors.black,
//                            fontWeight: FontWeight.w600,
//                            fontSize: 18.0),
//                      ),
//                      SizedBox(
//                        height: 8.0,
//                      ),
//                      Text(
//                        'Owner',
//                        style: TextStyle(
//                            fontFamily: fontName,
//                            color: Theme.of(context).primaryColor,
//                            fontWeight: FontWeight.w600,
//                            fontSize: 16.0),
//                      ),
//                    ],
//                  ),
//                  Padding(
//                    padding: EdgeInsets.symmetric(horizontal: 60.0),
//                    child: Text(
//                      '1.68 km',
//                      style: TextStyle(
//                          fontFamily: fontName,
//                          color: Theme.of(context).primaryColor,
//                          fontWeight: FontWeight.bold,
//                          fontSize: 16.0),
//                    ),
//                  )
//                ],
//              ),
//
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
              child: Container(
                child: Text(
                  owner.bio,
                  style: TextStyle(
                    fontFamily: fontName,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.justify,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                  width: 40.0,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                  ),
                ),
                FlatButton.icon(
                  padding: EdgeInsets.all(20.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.pets,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ADOPTION',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: fontName,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600),

                  ),
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
