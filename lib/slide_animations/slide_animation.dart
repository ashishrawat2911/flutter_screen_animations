import 'package:flutter/material.dart';

class SlideUpAnimation extends MaterialPageRoute {
  SlideUpAnimation({WidgetBuilder builder, RouteSettings routeSettings})
      : super(builder: builder, settings: routeSettings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> costum =
        Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0, 0.0))
            .animate(animation);
    return SlideTransition(position: costum, child: child);
  }
}

class SlideDownAnimation extends MaterialPageRoute {
  SlideDownAnimation({WidgetBuilder builder, RouteSettings routeSettings})
      : super(builder: builder, settings: routeSettings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> costum =
        Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset(0.0, 0.0))
            .animate(animation);
    return SlideTransition(position: costum, child: child);
  }
}

class SlideLeftAnimation extends MaterialPageRoute {
  SlideLeftAnimation({WidgetBuilder builder, RouteSettings routeSettings})
      : super(builder: builder, settings: routeSettings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> costum =
        Tween<Offset>(begin: Offset(1.1, 0.0), end: Offset(0.0, 0.0))
            .animate(animation);
    return SlideTransition(position: costum, child: child);
  }
}

class SlideRightAnimation extends MaterialPageRoute {
  SlideRightAnimation({WidgetBuilder builder, RouteSettings routeSettings})
      : super(builder: builder, settings: routeSettings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    Animation<Offset> costum =
        Tween<Offset>(begin: Offset(-1.1, 0.0), end: Offset(0.0, 0.0))
            .animate(animation);
    return SlideTransition(position: costum, child: child);
  }
}

class SlideTimeAnimation extends PageRouteBuilder {
  Widget widget;

  SlideTimeAnimation({this.widget})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: Duration(milliseconds:1000 ),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget widget) {
              Animation<Offset> costom =
                  Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                      .animate(animation);
              return SlideTransition(position: costom, child: widget);
            });
}
class BounceAnimation extends PageRouteBuilder {
  Widget widget;

  BounceAnimation({this.widget})
      : super(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return widget;
      },
      transitionDuration: Duration(milliseconds:2000 ),
      transitionsBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget widget) {
        Animation<Offset> costom =
        Tween<Offset>(begin: Offset(1.0, 1.0), end: Offset(0.0, 0.0))
            .animate(CurvedAnimation(parent: animation, curve: Curves.bounceIn));
        return SlideTransition(position: costom, child: widget);
      });
}