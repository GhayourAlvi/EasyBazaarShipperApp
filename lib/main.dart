import 'package:flutter/material.dart';
import 'package:shippers_app/profile.dart';
import 'package:shippers_app/sign_in.dart';

import 'home/home_page.dart';
import 'home_page.dart';
import 'loginPage.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Shippers App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: LoginPage());
  }
}
