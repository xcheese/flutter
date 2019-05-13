import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    TextStyle ts = TextStyle(fontSize: 20, color: Colors.red);

    return MaterialApp(
      title: 'Stateless Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
          appBar: AppBar(title: Text('stateless test')),
          body: Container(
//          width: 2000,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border(
                top: BorderSide(color: Colors.red, width: 5),
                bottom: BorderSide(color: Colors.blue, width: 10),
              ),
//            borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Text('hello nimei', style: ts),
                Icon(Icons.local_airport, size: 50, color: Colors.red),
                CloseButton(),
                BackButton(),
                Chip(avatar: Icon(Icons.android), label: Text('lalalal')),
                Divider(height: 0, color: Colors.orange),
                Card(
                  color: Colors.blue,
                  elevation: 10,
                  margin: EdgeInsets.all(20),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('card'),
                  ),
                ),
                AlertDialog(
                    title: Text('title'),
                    titleTextStyle: ts,
                    content: Text('sdsd'))
              ],
            ),
          )),
    );
  }
}
