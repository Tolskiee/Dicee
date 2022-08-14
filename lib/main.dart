import 'package:flutter/material.dart';

// test commit
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdicenumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftdicenumber = 5;
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('right');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
