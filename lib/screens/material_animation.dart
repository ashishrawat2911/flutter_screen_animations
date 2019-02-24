import 'package:flutter/material.dart';

class MaterialAnimation extends StatefulWidget {
  @override
  _MaterialAnimationState createState() => _MaterialAnimationState();
}

class _MaterialAnimationState extends State<MaterialAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
      body: Center(
        child: Text("Hey"),
      ),
    );
  }
}
