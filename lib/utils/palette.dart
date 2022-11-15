import 'package:flutter/material.dart'; 
class Palette { 
  static  MaterialColor kToDark = const MaterialColor( 
    0xffff7e10, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
     <int, Color>{ 
      50:  Color(0xffe6710e ),//10% 
      100:  Color(0xffcc650d),//20% 
      200:  Color(0xffb3580b),//30% 
      300:  Color(0xff994c0a),//40% 
      400:  Color(0xff803f08),//50% 
      500:  Color(0xff663206),//60% 
      600:  Color(0xff4c2605),//70% 
      700:  Color(0xff331903),//80% 
      800:  Color(0xff190d02),//90% 
      900:  Color(0xff000000),//100% 
    }, 
  ); 
} 