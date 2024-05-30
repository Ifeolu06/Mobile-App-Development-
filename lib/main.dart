import 'package:flutter/material.dart';
import 'Homepage.dart';

void main() {
  WidgetsApp.debugAllowBannerOverride=false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
 Widget build(BuildContext context){
   return MaterialApp(
     initialRoute:  Homepage.id,
     routes: {
       Homepage.id: (context) => Homepage(),

     },
   );
 }
}


