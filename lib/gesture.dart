import 'package:flutter/material.dart';

class Guesture extends StatefulWidget {
  @override
  _gestureState createState() => _gestureState();
}

class _gestureState extends State<Guesture> {
  String str = '';
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '手势test',
        home: Scaffold(
          appBar: AppBar(
            title: Text('手势test'),
          ),
          body: FractionallySizedBox(
            widthFactor: 1,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _clear(),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Text('清空'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _hand('点击'),
                      onDoubleTap: () => _hand('双击'),
                      onLongPress: () => _hand('长按'),
                      onTapCancel: () => _hand('取消'),
                      onTapDown: (e) => _hand('按下'),
                      onTapUp: (e) => _hand('松开'),
                      child: Container(
                        padding: EdgeInsets.all(60),
                        decoration: BoxDecoration(color: Colors.blue),
                        child: Text('点我'),
                      ),
                    ),
                    Text(str)
                  ],
                ),
                Positioned(
                  left: x,
                  top: y,
                  child: GestureDetector(
                    onPanUpdate: (e) => _move(e),
                    child: Container(
                      width: 100,
                      height: 100,

                      child: CircleAvatar(
//                        radius: 5,
                        backgroundImage: NetworkImage('https://img-dy.momocdn.com/album/07/5A/075A8A5F-45EF-9572-F071-CEB73612280620190323_S.jpg'),
//                        ClipRRect(
//                          borderRadius: BorderRadius.circular(100),
//                          child: Image(
//                            image: AssetImage('img/avatar.jpg'),
//                          ),
//                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  _move(DragUpdateDetails e) {
    setState(() {
      x += e.delta.dx;
      y += e.delta.dy;
    });
    print(e);
  }

  _hand(String s) {
    setState(() {
      str += s;
    });
  }

  _clear() {
    setState(() {
      str = '';
    });
  }
}
