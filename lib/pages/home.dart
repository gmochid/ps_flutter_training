import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
