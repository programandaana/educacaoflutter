import 'package:educacaoflutter/screen/dashboard_screen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        //color: Colors.green,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: ElevatedButton(
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
            ),
          ),
        ),
      ),
    );
  }
}
