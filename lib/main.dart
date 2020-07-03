import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.white10,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int n=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  n= Random().nextInt(6) + 1;
                });
               },
              child: Image.asset('images/dice$n.png'),
            ),
          ),Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                   n= Random().nextInt(6) + 1;});
                },
                child: Image.asset('images/dice$n.png'),)
          ),
        ],
      ),
    );
  }
}

