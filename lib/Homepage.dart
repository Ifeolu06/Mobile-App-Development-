import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  static const id = "Homepage";
  @override
  State<Homepage> createState() => _HomepageState();
}

  class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('My Blog'),
        ),
      ),
    ),
  );
}
  }
// Go to pub.dev and download different navigation button, make sure to import the package also, set state. (Floating flutter navigator)


