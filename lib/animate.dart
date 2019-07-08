import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:http/';

void main() => runApp(LogoApp());

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({
    Key key,
    Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Animation<double> animation = listenable;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: FlutterLogo(),
      ),
    );
  }

}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
//  AnimationStatus animationStatus;
//  double animationValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
//      ..addListener(() {
//        setState(() {
//          animationValue = animation.value;
//        });
//      })
//      ..addStatusListener((state) {
//        setState(() {
//          animationStatus = state;
//        });
//      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedLogo(animation: animation,);
//    return Container(
//      margin: EdgeInsets.only(top: 50),
//      color: Color.fromRGBO(200, 200, 200, 1),
//      child: Column(
//        children: <Widget>[
//          GestureDetector(
//            onTap: () {
//              controller.reset();
//              controller.forward();
//            },
//            child: Text(
//              'start',
//              textDirection: TextDirection.ltr,
//              style: TextStyle(
//                  inherit: false,
//                  fontSize: 20,
////                  color: Color(0xFF00FF00),
//                  color: Color.fromRGBO(255, 255, 0, 0.7),
//                  decoration: TextDecoration.lineThrough),
//            ),
//          ),
//          Text(
//            'state:' + animationStatus.toString(),
//            textDirection: TextDirection.ltr,
//            style: TextStyle(fontSize: 14),
//          ),
//          Text(
//            'Value:' + animationValue.toString(),
//            textDirection: TextDirection.ltr,
//            style: TextStyle(fontSize: 14),
//          ),
//          Container(
//            height: animation.value,
//            width: animation.value,
//            child: FlutterLogo(),
//          )
//        ],
//      ),
//    );
  }
}
