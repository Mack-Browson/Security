import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BienvenidoPantalla extends StatefulWidget {
  @override
  _BienvenidoPantallaState createState() => _BienvenidoPantallaState();
}

class _BienvenidoPantallaState extends State<BienvenidoPantalla> {

   Widget getButton (MaterialAccentColor color, String name, VoidCallback onPressed){
     return Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: Material(
         color: color,
         borderRadius: BorderRadius.circular(30.0),
         child: SizedBox(
           width: 10.0,
             child:FlatButton(
           child: Text(name),
           onPressed: onPressed
         ),
         )
       ),
     );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //padding: EdgeInsets.symmetric(vertical: 45.0),
         body: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("images/Background.jpg"),
               fit: BoxFit.cover,
             )
           ),
           padding: EdgeInsets.only(left: 0.0,top: 40.0,right: 0.0,bottom: 0.0),

           child: Column(
             mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
                       Column(
                         children:<Widget>[
                           Image.asset('images/logo.png',fit:BoxFit.none,scale: 2,alignment: Alignment.center),
                           Text( "SECURITY",
                             style: TextStyle(
                                 fontSize: 40.0,
                                 fontWeight: FontWeight.w700),
                             textAlign: TextAlign.center,
                             textDirection: TextDirection.ltr,
                           )

                       ]

                       ),
               SizedBox(height: 125.0,),
               getButton(
                      Colors.blueAccent," Iniciar ",(){} ),
               getButton(Colors.lightBlueAccent, "Registrar", () { })
           ],

         )

         ),
    );
  }
}
