import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dicees());
}
class Dicees extends StatelessWidget {
  const Dicees({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulApp(),
    );
  }
}
class MyStatefulApp extends StatefulWidget {
  @override
  State<MyStatefulApp> createState() => MyStatef();
}

class MyStatef extends State<MyStatefulApp> {
  var currents;
  String myButton = "Click Me";
  String content = "Dice";
  int currentDie=0;
  void diceBox() {
    setState(() {
     // dataToChange +=  ;
      int dices = Random().nextInt(6);
      currentDie=dices+1;
      currents = img[dices];
    });
  }
  // dice list
  List img = [
    Image.asset("assets/img/dice1.png"),
    Image.asset("assets/img/dice2.png"),
    Image.asset("assets/img/dice3.png"),
    Image.asset("assets/img/dice4.png"),
    Image.asset("assets/img/dice5.png"),
    Image.asset("assets/img/dice6.png")
  ];

  // end dice list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text("Dice_Random _Img")),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  child: Text( content,
                    style: const TextStyle(
                        fontSize: 32,
                        height: 4,
                        fontWeight: FontWeight.w400,
                    ),
                  )
              ),
               Container(
                     width: 200,
                   height: 200,
                   color: Colors.black,
                   child: currents,
                 ),

              Text("$currentDie", style: TextStyle(fontSize: 34),),

               const SizedBox(
                 height: 180,
               ),
              ElevatedButton(
                  onPressed: () {
              diceBox();
                   },
                child: Text("$myButton",style: const TextStyle(fontSize: 25,),
                   ),
                  ),

            ],
          ),
          ),

    );
  }
}


