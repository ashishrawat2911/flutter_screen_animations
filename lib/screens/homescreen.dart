import 'package:flutter/material.dart';
import 'package:flutter_screen_animations/screens/material_animation.dart';
import 'hero_animations.dart';
import 'package:flutter_screen_animations/slide_animations/slide_animation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Animations"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Hero Animations"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HeroAnimation()));
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Right to left"),
            onTap: () {
              Route r = SlideLeftAnimation(
                builder: (context) => MaterialAnimation(),
              );
              Navigator.push(context, r);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("left to right"),
            onTap: () {
              Route r = SlideRightAnimation(
                builder: (context) => MaterialAnimation(),
              );
              Navigator.push(context, r);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Up to down"),
            onTap: () {
              Route r = SlideDownAnimation(
                builder: (context) => MaterialAnimation(),
              );
              Navigator.push(context, r);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Down to up"),
            onTap: () {
              Route r = SlideUpAnimation(
                builder: (context) => MaterialAnimation(),
              );
              Navigator.push(context, r);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Animation with time duration ( 5 seconds)"),
            onTap: () {
              Route r = SlideTimeAnimation(widget: MaterialAnimation());
              Navigator.push(context, r);
            },
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text("Bounce"),
            onTap: () {
              Route r = BounceAnimation(widget: MaterialAnimation());
              Navigator.push(context, r);
            },
          )
        ],
      ),
    );
  }
}
