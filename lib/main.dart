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
        body:ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(10),
                            child:    
                              Text('Carlos Muñoz',
                                style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                                fontWeight: FontWeight.w200,
                                ),
                              ),
                          )
                        ]
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/cupon_empleado.png', 
                      fit:BoxFit.cover
                    )
                  ],
                ),
              ],
            )
          ],
        )
      )
    );
  }
}