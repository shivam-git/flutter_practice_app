import 'package:flutter/material.dart';
import 'package:flutter_practice_app/photo_search_app/photo_search_home.dart';
import 'package:flutter_practice_app/screens/pet_home_screen.dart';
import 'package:flutter_practice_app/screens/sign_up_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int count;


  @override
  Widget build(BuildContext context) {
    count = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Practice App'),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            getListTile('Sign Up & Login Screen UI', SignUpScreen()),
            getListTile('Pet Adoption Screen UI', HomeScreen()),
            getListTile('PhotoSearch App', PhotoSearchHome()),
          ],
        ),
      ),
    );
  }


  getListTile(String title, Widget widget) {
    count = count + 1;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return widget;
        }));
      },
      child: Card(
        child: ListTile(
          title: Text(title),
          leading: CircleAvatar(
            backgroundColor: Colors.black54,
            child: Text(
              '$count',
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
