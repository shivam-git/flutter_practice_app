import 'package:flutter/material.dart';

class PhotoSearchHome extends StatelessWidget {
  var _categoryNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Image.asset(
                  'assets/logo/photobay.png',
                  width: 200.0,
                  height: 200.0,
                ),
                TextFormField(
                  controller: _categoryNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Enter a category',
                      hintText: 'eg: dogs, bikes...',
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0)),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.white),
                  ),
                  elevation: 4.0,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
