import 'package:flutter/material.dart';
import 'package:shippers_app/home/home_page.dart';
import 'package:shippers_app/social_sign_in_button.dart';
import 'package:mysql1/mysql1.dart';
import 'package:shippers_app/mysqli.dart';
import 'dart:developer';
class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var db = new Mysql();
  var mail = '';
  void getUserData(){

    print("Ye ly");

//    db.getConnection().then((conn) {
//
//
//      String sql = 'SELECT email FROM easybazaar.databasee_authentication';
//
//      conn.query(sql).then((results) {
//
//      for(var row in results){
//        setState(() {
//          mail = row[0];
//        });
//      }
//      });
//    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Easy Bazaar',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Trebuchet MS',
                          fontSize: 30),
                    )),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                      'lib/images/easybazar.jpg',
                    width: 200.0,
                    height: 85,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)
                      ),
                      labelText: 'Email',

                      hintText: 'Enter your Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                      ),
                      focusColor: Colors.green,
                      labelText: 'Password',
                      hintText: 'Enter your Password',

                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){

                  },
                  textColor: Colors.green,
                  child: Text('Forgate Password ?'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      child: Text('Login',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),

                      ) ,
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        },
                    )),
                SizedBox(height: 8,),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.green,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                          //Sign Up Page
                          },
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                SizedBox(height: 8,),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(50, 0, 10, 0),
                  child: Row(
                    children: <Widget>[

                       Column(
                        children: <Widget>[
                          Center(
                          child: SizedBox(height: 40.0, width: 250.0,
                            child: SocialSignInButton(
                            assetName: 'lib/images/google-logo.png',
                            text: ' Sign in with Google',
                            textColor: Colors.black87,
                            color: Colors.white,
                            onPressed: () {},
                          ),),
                          ),


                          SizedBox(height: 8,),

                          SizedBox(height: 40.0, width: 250.0,
                            child:
                          SocialSignInButton(
                            assetName: 'lib/images/facebook-logo.png',
                            text: ' Sign in with Facebook',
                            textColor: Colors.white,
                            color: Color(0xFF334D92),
                            onPressed: () {},
                          ),
                            ),


                        ],
                      ),




                    ],
                  ),
                )
              ],
            )));
  }
}