import 'package:flutter/material.dart';

class Sidemenu extends StatefulWidget {
   const Sidemenu({ Key? key }) : super(key: key);

  @override
  _SidemenuState createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.White,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('DevHubSpot', style: TextStyle(color: Colors.White, fontSize: 25)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(1.0),
                bottomRight: Radius.circular(1.0)
              ),
              color: Colors.White,
              image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/bg.jpeg')
              )
            ),
          ),

           ListTitle(
            leading: Icon(Icons.home_filled),
            title: Text("Home"),
            onPressed: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()))
            },
          ),



          // ListTitle(
          //   leading: Icon(Icons.home_filled),
          //   title: Text("Home"),
          //   onTap: () => {
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()))
          //   },
          // ),

          // ListTitle(
          //   leading: Icon(Icons.person),
          //   title: Text("Profile"),
          //   onTap: () => {
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Profile()))
          //   },
          // ),

          // ListTitle(
          //   leading: Icon(Icons.person_pin_outlined),
          //   title: Text("Team"),
          //   onTap: () => {
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Team()))
          //   },
          // ),

          // ListTitle(
          //   leading: Icon(Icons.more_horiz_outlined),
          //   title: Text("More"),
          //   onTap: () => {
          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => More()))
          //   },
          // ),

        ],

      ),

    );
  }
}