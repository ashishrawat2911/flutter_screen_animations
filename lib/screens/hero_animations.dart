import 'package:flutter/material.dart';
import 'hero_detail.dart';

class HeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    var timeDilation = 5.0; // 1.0 means normal animation speed.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Hero Animation'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("ASAP Rocky"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeroDetail()));
              },
              leading: Hero(
                tag: "asap",
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT63fUqRPxwETd5YTf-l4_l828QPBOXvIBHR7m2Z7uczZGcVT6Q",
                  width: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
