import 'package:flutter/material.dart';
import 'Home.dart';
void main(){
  runApp(Dice());
}

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "DiceRoller",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
