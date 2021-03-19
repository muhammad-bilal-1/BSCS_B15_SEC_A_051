import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void audio(int number) {
    final player = new AudioCache();
    player.play('note$number.wav');
  }

  Expanded button(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audio(number);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                button(Colors.blue, 1),
                button(Colors.red, 2),
                button(Colors.green, 3),
                button(Colors.yellow, 4),
                button(Colors.orange, 5),
                button(Colors.pink, 6),
                button(Colors.purple, 7),
              ]),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
