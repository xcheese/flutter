import 'package:flutter/material.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 0, 0, .2),
          border: Border.all(width: 4, color: Colors.blue),
          borderRadius: BorderRadius.only(
              //Radius.circular 为单位
              topLeft: Radius.circular(100),
              bottomRight: Radius.circular(200)),
          boxShadow: [
            //boxShadow 要为list
            BoxShadow(
                color: Colors.white,
                offset: Offset(2, 1),
                blurRadius: 10,
                spreadRadius: 0) //传播距离
          ],
          image: DecorationImage(
            image: NetworkImage(
                'https://s.momocdn.com/w/u/others/2019/05/21/1558434490380-xiong.png'),
//            fit: BoxFit.cover,
          ),
        ),
//        width: 100,
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.pink,
              width: 100,
              height: 100,
              transform: Matrix4.rotationZ(0.3),
            ),
            Container(
                color: Colors.green,
                width: 200,
                height: 200,
                child: Text.rich(TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(text: "home:"),
                      TextSpan(
                          text: 'www.baidu.com',
                          style: TextStyle(color: Colors.red))
                    ]))),
//                child: Text('12312312221312323133',
//                    maxLines: 2,
//                    overflow: TextOverflow.ellipsis,
//                    textAlign: TextAlign.center,
//                    style: TextStyle(
//                        color: Colors.black,
////                        height:1,
//                        fontSize: 38,
//                        decorationStyle: TextDecorationStyle.dashed,
//                        decoration: TextDecoration.underline))),
          ],
          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
        ));
  }
}
