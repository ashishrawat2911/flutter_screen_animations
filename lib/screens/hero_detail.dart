import 'package:flutter/material.dart';

class HeroDetail extends StatefulWidget {
  @override
  HeroDetailState createState() {
    return new HeroDetailState();
  }
}

class HeroDetailState extends State<HeroDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Asap HipHop'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Hero(
                tag: "asap",
                child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT63fUqRPxwETd5YTf-l4_l828QPBOXvIBHR7m2Z7uczZGcVT6Q"),
              ),
            ),
            Text(
              "ASAP Rocky",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Chrome to ya dome til ya get glockjaw Party like a cowboy or a rockstar Everybody play the tough guy til shit pop off",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Icon(Icons.tablet_mac)
              ],
            )
          ],
        ),
      ),
    );
  }
}
