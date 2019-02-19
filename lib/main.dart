import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Primer FLutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Cupón de empleado Alsea'),
        ),
        //backgroundColor: Color.fromARGB(0, 110, 196, 231),
        //backgroundColor: Colors.blueAccent,
        backgroundColor: new Color(0xFF1385b3),
        body: new Container(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text("Carlos Muñoz"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text('3MPD0FKFR3'),
                  ],
                )
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex :2,
                    child: new Image.asset('images/cupon_empleado.png', fit:BoxFit.cover),
                  )
                ],
              ),
            ],
            /*children: <Widget>[
              new Text("José Carlos Muñoz"),
              //new Image.network('https://webapp-mx-corp-prod-wscommons.azurewebsites.net/WSBarcode/barcode-api/image?barcode=3MPD0FKFR3&type=1'),
              new Image.asset('images/cupon_empleado.png', fit:BoxFit.cover),
              new Text('3MPD0FKFR3')
              //new Image.network('https://cdn2.thecatapi.com/images/4if.gif')
            ]*/
          )
        ),
      ),
    );
  }
}