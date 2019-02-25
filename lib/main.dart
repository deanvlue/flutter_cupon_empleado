import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Cupón empleado Alsea',
      home:Scaffold(
        backgroundColor: Color(0xff00597f),
        appBar: AppBar(
          //title: new Text('Cupón Empleado Alsea'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:new Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Dash
                new Expanded(
                  child: new Container(
                    //color: Colors.greenAccent,
                    child: Image.asset('images/dash.jpeg',
                    fit:BoxFit.fitHeight),
                  ),
                ),
                // Nombre y ID de Cupón
                new Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 50),
                    child: new Column(
                    children: <Widget>[
                      new RichText(
                          text: new TextSpan(
                          children:[
                              new TextSpan(
                                text: 'Carlos Muñoz\n',
                                style: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 5.0,
                                  height: 1.0,
                                )
                              ),
                              new TextSpan(
                                text: '3MPD0FKFR3',
                                style: new TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 18.0,
                                  letterSpacing: 3.0,
                                  height: 1.0,
                                )
                              )
                            ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Cupón expandido
                Padding(
                  padding: const EdgeInsets.only(top:5, bottom: 10),
                  child: new Container(
                    width: double.infinity,
                    child:new Center(
                        child: new Image.asset(
                          'images/cupon_empleado.png',
                          fit: BoxFit.cover)
                      ),
                  ),
                ),
                //nombreText,
                //cuponDisplay,
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