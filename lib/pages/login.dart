import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25),
            child: Text('Programmer Semarang', style: TextStyle(fontSize: 24)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: _buildLoginBox(),
          ),
        ],
      )
    );
  }

  Container _buildLoginBox() {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8)
        ),
        child: Column(
          children: <Widget>[
            _buildTitle(),
            _buildPhoneTextField(),
            _buildLoginButton(),
            _buildLoginWithFacebook(),
          ],
        ),
      );
  }

  Padding _buildLoginWithFacebook() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
        left: 12,
        right: 12,
      ),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Text('Masuk dengan Facebook'),
          onPressed: () { print('Masuk dengan Facebook'); },
        ),
      ),
    );
  }

  Padding _buildLoginButton() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 21,
        left: 12,
        right: 12,
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0xFF6AA434),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Text(
              'Masuk', 
              style: TextStyle(color: Colors.white)
            )
          )
        ),
        onPressed: () { print('Hello'); },
      ),
    );
  }

  Padding _buildPhoneTextField() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 23,
        left: 12,
        right: 12,
      ),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Nomor Telepon'
        ),
      ),
    );
  }

  Padding _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text('Masuk', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }
}
