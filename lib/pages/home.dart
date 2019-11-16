import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ps_flutter/color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PSColor.primary,
        title: Text('Home'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Text('Logout'),
              onPressed: () { Navigator.pushReplacementNamed(context, '/'); },
            )
          ],
        ),
      ),
    );
  }
}
