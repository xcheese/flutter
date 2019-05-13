import 'package:flutter/material.dart';

class Buju extends StatefulWidget {
  @override
  _BujuState createState() => _BujuState();
}

class _BujuState extends State<Buju> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '123123',
        home: Scaffold(
          appBar: AppBar(
            title: Text('buju'),
          ),
          body: Container(
              child: Column(
            children: <Widget>[
              ClipOval(
                  child: Image.network(
                'http://www.devio.org/img/avatar.png',
                width: 100,
                height: 100,
              )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      child: Opacity(
                        opacity: 0.4,
                        child: Image.network(
                          'http://www.devio.org/img/avatar.png',
                          width: 50,
                          height: 50,
                        ),
                      ))),
            ],
          )),
        ));
  }
}
