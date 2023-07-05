import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> imageList = [
    'images/dice1.png',
    'images/dice2.png',
    'images/dice3.png',
    'images/dice4.png',
    'images/dice5.png',
    'images/dice6.png',
  ];
  String imageUrl = 'images/dice1.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Center(child: Text("Rotate The Dice")),
        ),
        body: SafeArea(
          child: Center(
            child: IconButton(
              icon: Image.asset(imageUrl),
              iconSize: 300,
              onPressed: () {
                setState(() {
                  Random random = Random();
                  int index = random.nextInt(imageList.length);
                  imageUrl = imageList[index];
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
