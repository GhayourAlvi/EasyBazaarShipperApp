import 'package:flutter/material.dart';


class NevigationDrawer extends StatelessWidget{
final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
    final name = 'Yogesh';
    final email = 'yogesh.cs17@iba-suk.edu.pk';
    final image = 'assets/images/profile.png';



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Material(
        color: Colors.lightBlue,
        child: ListView(
          padding: padding,
          children: <Widget>[
            header(
                image : image,
                name : name,
                email : email,
                onClicked : (){

                }
            ),
            Divider(
              color: Colors.white70,
              thickness: 0.5,
            ),
            const SizedBox(height: 30,),
            Menu(
              text : "Edit Your Profile",
              icon : Icons.people,
            ),
            const SizedBox(height: 16,),
            Menu(
              text : "Edit Wallet Account",
              icon : Icons.attach_money,
            ),
            const SizedBox(height: 16,),
            Menu(
              text : "Sign Out",
              icon : Icons.timer_off,
            ),
            const SizedBox(height:24,),
            Divider(
              color: Colors.white70,
              thickness: 0.5,
            ),
            const SizedBox(height:16,),
            Menu(
              text : "Delete Account",
              icon : Icons.delete,
            ),
          ],
        ),
      ),
    );
  }
  }

  Widget Menu({
// ignore: experiment_not_enabled
String text,
 IconData icon,
}){
    final color = Colors.white;
    final hovercolor = Colors.blue;

    return ListTile(
      leading: Icon(icon , color: color,),
      title: Text(text, style: TextStyle(color: color , fontSize: 14 , fontWeight: FontWeight.w500),),
      hoverColor: hovercolor,
      onTap: (){},
    );

  }

  Widget header({String name , String email , String image , VoidCallback onClicked})=> InkWell(
    onTap: onClicked,
    child: Container(
      // ignore: undefined_identifier
      //padding: padding.add(EdgeInsets.symmetric(vertical:15)),
      child: Row(
        children: [
          // ignore: argument_type_not_assignable
          CircleAvatar(radius: 30,backgroundImage:NetworkImage(image),),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name , style: TextStyle(fontSize: 20 , color: Colors.white , fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4,),
              Text(
                email , style: TextStyle(fontSize: 10 , color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    ),
  );



