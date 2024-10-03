
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num=1;
  void rolldice(){
    setState(() {
      num = Random().nextInt(6)+1;  //since random generates numbers from 0
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10,top: 15,bottom: 20),
          child:  Text("Dice Roller" , style: TextStyle(color: Colors.white , fontSize: 30,fontWeight:FontWeight.bold),
          ),
        ),
        backgroundColor: Color.fromRGBO(0, 50, 100,1),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/dice/dice$num.png',height: 200,),
            ElevatedButton(
              onPressed: rolldice,
              child: const Text("Roll Dice",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );

  }
}


