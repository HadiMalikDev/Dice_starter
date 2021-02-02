import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('DiceApp',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePage createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  @override
  
  int dice1=1;
  int dice2=1;
  
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: (){
                  setState(() {
                    randomizer();
                  });
                },
                child: Image.asset('images/dice$dice1.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: InkWell(
                onTap: (){
                  setState(() {
                    randomizer();
                  });
                },
                child: Image.asset('images/dice$dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
  randomizer()
  {
    dice1=Random().nextInt(6)+1;
    dice2=Random().nextInt(6)+1;
  }
}
