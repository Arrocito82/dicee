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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  // Message on screen
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Awesome Snackbar!'),
                      duration: Duration(seconds: 5),
                      backgroundColor: Colors.deepPurple,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      action: SnackBarAction(
                        label: 'OK',
                        textColor: Colors.white,
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                },
                child: Image.asset("images/dice1.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  // Print to the console
                  print("Right Button got pressed!");
                },
                child: Image.asset("images/dice1.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
