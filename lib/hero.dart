import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home:HeroApp()));

class HeroApp extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;

  const HeroApp({Key key, this.photo, this.onTap, this.width}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
