import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  @override
  _StatefulState createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Stateful 组件',
      home: Scaffold(
          appBar: AppBar(title: Text('appbar title')),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _index,
              onTap: (index) {
                setState(() {
                  _index = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  activeIcon: Icon(Icons.home, color: Colors.blue),
                  title: Text('home'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.list, color: Colors.grey),
                    activeIcon: Icon(Icons.list, color: Colors.blue),
                    title: Text('list')),
              ]),
          floatingActionButton: FloatingActionButton(
              onPressed: _handleRefresh, child: Text('click')),
          body: _index == 0
              ? RefreshIndicator(
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          height: 100,
                          margin: EdgeInsets.only(top: 0),
                          decoration:
                              BoxDecoration(color: Colors.lightBlueAccent),
                          child: PageView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              _item('p1', Colors.green),
                              _item('p2', Colors.pink),
                              _item('p3', Colors.red),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  onRefresh: _handleRefresh,
                )
              : Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Text('list'),
                      ),
                    )
                  ],
                )),
    );
  }

  Future<Null> _handleRefresh() async {
    await Future.delayed(Duration(milliseconds: 3000));
    return null;
  }

  _item(String title, Color color) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: color),
        child: Text(
          title,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ));
  }
}
