import 'package:flutter/material.dart';
import 'package:shippers_app/sign_in.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shippers App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: SignIn());
  }
}
