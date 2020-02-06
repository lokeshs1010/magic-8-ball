import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: AskMe(),
      ),
    );

class AskMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: AskMePage(),
    );
  }
}

class AskMePage extends StatefulWidget {
  @override
  _AskMePageState createState() => _AskMePageState();
}

class _AskMePageState extends State<AskMePage> {
  int ballNumber = 1;
  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: changeBallNumber,
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
