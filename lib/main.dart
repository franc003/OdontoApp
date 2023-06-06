import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/page01.dart';
import 'package:flutter_application_1/pages/page02.dart';
import 'package:flutter_application_1/pages/page03.dart';
import 'package:flutter_application_1/widgets/bot-tex-campos.dart';

void main() {
  runApp(OdontoApp());
}

class OdontoApp extends StatelessWidget {
  const OdontoApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            width: double.infinity,
            color: Colors.orangeAccent[200],
            child: Inicio(),
          )
        )
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, 
        children: <Widget>[
          Image.network(
            "https://i.imgur.com/SPGYdFU.jpeg",
            width: 250.0,
            height: 180.0,
          ),
          Container(child: titulo(context)),
          Container(child: contacto(context)),
        ]
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: boton1(context)),
            Expanded(child: boton2(context)),
            Expanded(child: boton3(context)),
          ]
        ),
      ),
      Expanded(
          child: Expanded(
            child: Image.network(
              "https://www.shutterstock.com/image-photo/female-dentist-drilling-tooth-male-260nw-1034571070.jpg",
              //width: 400.0,
              //height: 350.0,
              fit: BoxFit.cover
            ),
          )
      ),
    ]);
  }
}
