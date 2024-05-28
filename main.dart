import 'package:flutter/material.dart';
import 'math:dart';
void main(){
  runApp(MaterialApp(
       home: Scaffold (
       backgroundColor: Colors.red,
         appBar: AppBar(
           title: const Text(
             'DICE',
              style: TextStyle(color:Colors.white),
           ),
         ),
         body: const DicePage(),
       ),
  ));

}
class DicePage extends StatefulWidget{
  const DicePage({Key? key}):super(key:key);

  @override
  State<DicePage> createState() =>_DicePageState();
}

  class _DicePageState extends State<DicePage> {
  int topButton = 1;// Default value for top dice side
  int bottomButton =1; // Default value for bottom dice
  int leftButton = 1; // Default value for left dice side
  int rightButton = 1; // Default value for right dice side

  @override
    Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        TextButton(
        onPressed: () {
      setState(() {
        topButton = Random().nextInt(6) + 1; // Roll top dice side
      });
    },
      child: Image.asset('assets/images/dice4.png'), // Show top dice side image
    ),
    TextButton(
    onPressed: () {
    setState(() {
    bottomButton = Random().nextInt(6) + 1; // Roll bottom dice side
    });
    },
    child: Image.asset('assets/images/dice3.png'), // Show bottom dice side image
    ),
    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextButton(
    onPressed: () {
      setState(() {
        leftButton = Random().nextInt(6) + 1; // Roll left dice side
      });
    },
      child: Image.asset('assets/images/dice2.png'), // Show left dice side image
    ),
      TextButton(
        onPressed: () {
          setState(() {
            rightButton = Random().nextInt(6) + 1; // Roll right dice side
          });
        },
        child: Image.asset('assets/images/dice1.png'), // Show right dice side image
      ),
    ],
    ),
        ],
      ),
    );
  }
  }

