import 'package:flutter/material.dart';
import 'package:shippers_app/nevigation_drawer.dart';
void main() => runApp(ProfilePage());

class ProfilePage extends StatelessWidget{
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {

    Widget textfield({@required String hintText}){
      return Material(
        elevation: 2,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                letterSpacing: 2,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              fillColor: Colors.white30,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8.0)
              )
          ),

        ),
      );
    }

    // TODO: implement build
    return Scaffold(

      drawer: NevigationDrawer(),
      body: Scrollbar(
        isAlwaysShown: true,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 30,
                        child:  textfield(hintText: 'Yogesh' , ),
                      ),
                      SizedBox(
                        height: 30,
                        child:  textfield(hintText: 'yogesh.cs17@iba-suk.edu.pk' , ),
                      ),
                      SizedBox(
                        height: 30,
                        child:  textfield(hintText: '*******' , ),
                      ),
                      SizedBox(
                        height: 35,
                        child:  textfield(hintText: 'Pano Akil' , ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        child: RaisedButton(
                          onPressed: (){},
                          color: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),


                          child: Center(
                            child: Text("Update Profile" , style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),),

                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(20.0),
                  child: Text("Profile" , style: TextStyle(
                      fontSize: 30 , letterSpacing: 1 , color: Colors.white , fontWeight: FontWeight.w600
                  ),),
                ) ,
                Container(
                    padding: EdgeInsets.all(10.0),
                    width: MediaQuery.of(context).size.width/3,
                    height: MediaQuery.of(context).size.width/3,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: 10),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage('assets/images/profile.png'),
                          fit: BoxFit.cover,

                        )
                    )
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 200 , left: 120),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(Icons.edit , color: Colors.black,),
                  iconSize: 15,
                  onPressed: (){},
                ),
              ),
            ) ,


          ],
        ),
      ),

    );
  }

}

class HeaderCurvedContainer extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color=Colors.indigo;
    Path path = Path()..relativeLineTo(0, 160)..quadraticBezierTo(size.width/2, 190, size.width, 150)..relativeLineTo(0, -150)..close();
    canvas.drawPath(path, paint);

    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate )=> false;

  
}