import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:navigator/navigator.dart';

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
         final navigationProvider = RouterConfiguration(
    paths,);
       child: MaterialApp(
    // ...
    navigatorKey: navigationProvider.navigatorKey,
    onGenerateRoute: navigationProvider.onGenerateRoute,
    onUnknownRoute: navigationProvider.onUnknownRoute,
    // ...    
),
},
);
);
 }
}


