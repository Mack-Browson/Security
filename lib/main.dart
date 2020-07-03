import 'package:flutter/material.dart';
import 'package:scorpionsecurity/pantallas/bienvedidoPantalla.dart';

void main(){
  runApp(
    MaterialApp(
     home: BienvenidoPantalla(),
      theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(color:Colors.black)
          )
      ),
    )
  );
}
