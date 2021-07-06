import 'package:flutter/material.dart';
import 'package:shippers_app/home/home_page.dart';
import 'package:shippers_app/social_sign_in_button.dart';


class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
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
                          color: Colors.indigo,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.indigo,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.indigo,
                      child: Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.indigo,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                          //Sign Up Page
                          },
                        ),

                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                Container(
                  child: Row(
                    children: <Widget>[
                      Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40.0,  child: SocialSignInButton(
                            assetName: 'lib/images/google-logo.png',
                            text: ' Sign in with Google',
                            textColor: Colors.black87,
                            color: Colors.white,
                            onPressed: () {},
                          ),),
                          SizedBox(height: 8,),

                          SizedBox(height: 40.0,child:
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
                      )



                    ],
                  ),
                )
              ],
            )));
  }
}