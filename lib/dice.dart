// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'dart:math';

class Dicegame extends StatefulWidget {
  const Dicegame({super.key});

  @override
  State<Dicegame> createState() => _DicegameState();
}

class _DicegameState extends State<Dicegame> {
  var leftdiceNumber = 1;
  var rightdiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D I C E'),
        centerTitle: true,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            leftdiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset('images/dice$leftdiceNumber.png'))),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            rightdiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset('images/dice$rightdiceNumber.png')))
              ],
            )
          ],
        ),
      ),
    );
  }
}
