import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green.shade700,
      appBar: AppBar(
        title: Text("Dicee"),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
      ),
      body: DicePage(),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  /*
                  You need to change the state within setState method
                  so that it'll reload and call build method
                  */
                  setState(() {
                    // Generates a random number from 0 to 5, plus one => [1,6]
                    leftDiceNumber = Random().nextInt(5) + 1;
                    rightDiceNumber = Random().nextInt(5) + 1;
                  });
                  print("Left Button got pressed! Number: $leftDiceNumber");
                },
                // This is how to embed vars into strings
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(5) + 1;
                    rightDiceNumber = Random().nextInt(5) + 1;
                  });
                  // Print to the console
                  print("Right Button got pressed! Number: $rightDiceNumber");
                },
                child: Image.asset("images/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
