import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter layout demo',
      home:Scaffold(
        backgroundColor: new Color(0xff00597f),
        appBar: AppBar(
          title: new Text('Flutter Layout demo'),
        ),
        body:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                nombreText,
                cuponDisplay,
              ],
            )
        ),
      );
  }
}

Widget cuponDisplay =Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
    Expanded(
      child: Column(
      children: <Widget>[
        Image.asset(
          'images/cupon_empleado.png',
          fit:BoxFit.cover,
        )
      ],
    ),)
  ],)
);

Widget nombreText =Container(
  child: Row(children: <Widget>[
    Expanded(child: Column(
      children: <Widget>[
        Text('Carlos Muñoz',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
        )
      ],
    ),)
  ],)
);