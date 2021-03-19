import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 160.0,
          title: Text('Dicee Roll app in Flutter'),
          backgroundColor: Colors.deepPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(100),
            ),
          ),
        ),
        body: Diceroll(),
      ),
    );
  }
}

class Diceroll extends StatefulWidget {
  @override
  _DicerollState createState() => _DicerollState();
}

class _DicerollState extends State<Diceroll> {
  int left = 1;
  int right = 1;
  int up = 1;
  int down = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  child: Image.asset('images/Alea_$up.png'),
                  onPressed: () {
                    setState(() {
                      up = Random().nextInt(5) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      left = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/Alea_$left.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      right = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/Alea_$right.png'),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      down = Random().nextInt(5) + 1;
                    });
                  },
                  child: Image.asset('images/Alea_$down.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 450.0,
            height: 20.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      up = Random().nextInt(5) + 1;
                      down = Random().nextInt(5) + 1;
                      left = Random().nextInt(5) + 1;
                      right = Random().nextInt(5) + 1;
                    });
                  },
                  color: Colors.deepPurple,
                  minWidth: 350.0,
                  height: 50.0,
                  textColor: Colors.white,
                  child: Text(
                    'Roll All',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 450.0,
            height: 20.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    side: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      up = 1;
                      down = 1;
                      left = 1;
                      right = 1;
                    });
                  },
                  color: Colors.deepPurple,
                  minWidth: 350.0,
                  height: 50.0,
                  textColor: Colors.white,
                  child: Text(
                    'Reset All',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
