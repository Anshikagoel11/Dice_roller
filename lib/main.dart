import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(const Dice());
}

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "DiceRoller",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10,top: 15,bottom: 20),
          child:  Text("Dice Roller" , style: TextStyle(color: Colors.white , fontSize: 35,fontWeight:FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/dice/dice$num.png',height: 200,width: 200,),
            ElevatedButton(onPressed: (){
              setState(() {
                num = Random().nextInt(6)+1;  //since random generates numbers from 0
              });
            },
                child: const Text("Roll Dice",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                ),
            )
          ],
        ),
      ),
    );
  }
}


