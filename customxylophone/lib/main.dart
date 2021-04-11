import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

// main() {
//   nouns.take(50).forEach(print);
// }
String dropdownValue = 'Select Sound';
String dropdownColor = 'Select Color';
String dropdownValue1 = 'Select Sound';
String dropdownColor1 = 'Select Color';
String dropdownValue2 = 'Select Sound';
String dropdownColor2 = 'Select Color';
String dropdownValue3 = 'Select Sound';
String dropdownColor3 = 'Select Color';
String dropdownValue4 = 'Select Sound';
String dropdownColor4 = 'Select Color';
String dropdownValue5 = 'Select Sound';
String dropdownColor5 = 'Select Color';
String dropdownValue6 = 'Select Sound';
String dropdownColor6 = 'Select Color';
String dropdownValue7 = 'Select Sound';
String dropdownColor7 = 'Select Color';
int s1, s2, s3, s4, s5, s6, s7;
Color c1, c2, c3, c4, c5, c6, c7;

void main() {
  return runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => customizexylo(),
        '/second': (context) => Xylophoneapp(),
      },
    ),
  );
}

void playsound(int number) {
  final play = AudioCache();
  play.play('note$number.wav');
}

Expanded CreateButton(Color color, int number) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(number);
      },
    ),
  );
}

class customizexylo extends StatefulWidget {
  @override
  //const customizexylo({Key? key}) : super(key: key);
  _customizexyloState createState() => _customizexyloState();
}

class _customizexyloState extends State<customizexylo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.amberAccent,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.red,
              title: Text(
                'Customize with your choice!!!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: Container(
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '1st_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                    if (dropdownValue == '1') {
                                      s1 = 1;
                                    } else if (dropdownValue == '2') {
                                      s1 = 2;
                                    } else if (dropdownValue == '3') {
                                      s1 = 3;
                                    } else if (dropdownValue == '4') {
                                      s1 = 4;
                                    } else if (dropdownValue == '5') {
                                      s1 = 5;
                                    } else if (dropdownValue == '6') {
                                      s1 = 6;
                                    } else if (dropdownValue == '7') {
                                      s1 = 7;
                                    } else if (dropdownValue ==
                                        'Select Sound') {
                                      s1 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor = newValue;
                                    if (dropdownColor == 'Blue') {
                                      c1 = Colors.blue;
                                    } else if (dropdownColor == 'Green') {
                                      c1 = Colors.green;
                                    } else if (dropdownColor == 'Red') {
                                      c1 = Colors.red;
                                    } else if (dropdownColor ==
                                        'YellowAccent') {
                                      c1 = Colors.yellowAccent;
                                    } else if (dropdownColor == 'deepOrange') {
                                      c1 = Colors.deepOrange;
                                    } else if (dropdownColor == 'teal') {
                                      c1 = Colors.teal;
                                    } else if (dropdownColor == 'black12') {
                                      c1 = Colors.black12;
                                    } else if (dropdownColor ==
                                        'Select Color') {
                                      c1 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '2nd_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue1,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue1 = newValue;
                                    if (dropdownValue1 == '1') {
                                      s2 = 1;
                                    } else if (dropdownValue1 == '2') {
                                      s2 = 2;
                                    } else if (dropdownValue1 == '3') {
                                      s2 = 3;
                                    } else if (dropdownValue1 == '4') {
                                      s2 = 4;
                                    } else if (dropdownValue1 == '5') {
                                      s2 = 5;
                                    } else if (dropdownValue1 == '6') {
                                      s2 = 6;
                                    } else if (dropdownValue1 == '7') {
                                      s2 = 7;
                                    } else if (dropdownValue1 ==
                                        'Select Sound') {
                                      s2 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor1,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor1 = newValue;
                                    if (dropdownColor1 == 'Blue') {
                                      c2 = Colors.blue;
                                    } else if (dropdownColor1 == 'Green') {
                                      c2 = Colors.green;
                                    } else if (dropdownColor1 == 'Red') {
                                      c2 = Colors.red;
                                    } else if (dropdownColor1 ==
                                        'YellowAccent') {
                                      c2 = Colors.yellowAccent;
                                    } else if (dropdownColor1 == 'deepOrange') {
                                      c2 = Colors.deepOrange;
                                    } else if (dropdownColor1 == 'teal') {
                                      c2 = Colors.teal;
                                    } else if (dropdownColor1 == 'black12') {
                                      c2 = Colors.black12;
                                    } else if (dropdownColor1 ==
                                        'Select Color') {
                                      c2 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '3rd_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue2,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue;
                                    if (dropdownValue2 == '1') {
                                      s3 = 1;
                                    } else if (dropdownValue2 == '2') {
                                      s3 = 2;
                                    } else if (dropdownValue2 == '3') {
                                      s3 = 3;
                                    } else if (dropdownValue2 == '4') {
                                      s3 = 4;
                                    } else if (dropdownValue2 == '5') {
                                      s3 = 5;
                                    } else if (dropdownValue2 == '6') {
                                      s3 = 6;
                                    } else if (dropdownValue2 == '7') {
                                      s3 = 7;
                                    } else if (dropdownValue2 ==
                                        'Select Sound') {
                                      s3 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor2,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor2 = newValue;
                                    if (dropdownColor2 == 'Blue') {
                                      c3 = Colors.blue;
                                    } else if (dropdownColor2 == 'Green') {
                                      c3 = Colors.green;
                                    } else if (dropdownColor2 == 'Red') {
                                      c3 = Colors.red;
                                    } else if (dropdownColor2 ==
                                        'YellowAccent') {
                                      c3 = Colors.yellowAccent;
                                    } else if (dropdownColor2 == 'deepOrange') {
                                      c3 = Colors.deepOrange;
                                    } else if (dropdownColor2 == 'teal') {
                                      c3 = Colors.teal;
                                    } else if (dropdownColor2 == 'black12') {
                                      c3 = Colors.black12;
                                    } else if (dropdownColor2 ==
                                        'Select Color') {
                                      c3 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '4th_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue3,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue3 = newValue;
                                    if (dropdownValue3 == '1') {
                                      s4 = 1;
                                    } else if (dropdownValue3 == '2') {
                                      s4 = 2;
                                    } else if (dropdownValue3 == '3') {
                                      s4 = 3;
                                    } else if (dropdownValue3 == '4') {
                                      s4 = 4;
                                    } else if (dropdownValue3 == '5') {
                                      s4 = 5;
                                    } else if (dropdownValue3 == '6') {
                                      s4 = 6;
                                    } else if (dropdownValue3 == '7') {
                                      s4 = 7;
                                    } else if (dropdownValue3 ==
                                        'Select Sound') {
                                      s4 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor3,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor3 = newValue;
                                    if (dropdownColor3 == 'Blue') {
                                      c4 = Colors.blue;
                                    } else if (dropdownColor3 == 'Green') {
                                      c4 = Colors.green;
                                    } else if (dropdownColor3 == 'Red') {
                                      c4 = Colors.red;
                                    } else if (dropdownColor3 ==
                                        'YellowAccent') {
                                      c4 = Colors.yellowAccent;
                                    } else if (dropdownColor3 == 'deepOrange') {
                                      c4 = Colors.deepOrange;
                                    } else if (dropdownColor3 == 'teal') {
                                      c4 = Colors.teal;
                                    } else if (dropdownColor3 == 'black12') {
                                      c4 = Colors.black12;
                                    } else if (dropdownColor3 ==
                                        'Select Color') {
                                      c4 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '5th_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue4,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue4 = newValue;
                                    if (dropdownValue4 == '1') {
                                      s5 = 1;
                                    } else if (dropdownValue4 == '2') {
                                      s5 = 2;
                                    } else if (dropdownValue4 == '3') {
                                      s5 = 3;
                                    } else if (dropdownValue4 == '4') {
                                      s5 = 4;
                                    } else if (dropdownValue4 == '5') {
                                      s5 = 5;
                                    } else if (dropdownValue4 == '6') {
                                      s5 = 6;
                                    } else if (dropdownValue4 == '7') {
                                      s5 = 7;
                                    } else if (dropdownValue4 ==
                                        'Select Sound') {
                                      s5 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor4,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor4 = newValue;
                                    if (dropdownColor4 == 'Blue') {
                                      c5 = Colors.blue;
                                    } else if (dropdownColor4 == 'Green') {
                                      c5 = Colors.green;
                                    } else if (dropdownColor4 == 'Red') {
                                      c5 = Colors.red;
                                    } else if (dropdownColor4 ==
                                        'YellowAccent') {
                                      c5 = Colors.yellowAccent;
                                    } else if (dropdownColor4 == 'deepOrange') {
                                      c5 = Colors.deepOrange;
                                    } else if (dropdownColor4 == 'teal') {
                                      c5 = Colors.teal;
                                    } else if (dropdownColor4 == 'black12') {
                                      c5 = Colors.black12;
                                    } else if (dropdownColor4 ==
                                        'Select Color') {
                                      c5 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '6th_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue5,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue5 = newValue;
                                    if (dropdownValue5 == '1') {
                                      s6 = 1;
                                    } else if (dropdownValue5 == '2') {
                                      s6 = 2;
                                    } else if (dropdownValue5 == '3') {
                                      s6 = 3;
                                    } else if (dropdownValue5 == '4') {
                                      s6 = 4;
                                    } else if (dropdownValue5 == '5') {
                                      s6 = 5;
                                    } else if (dropdownValue5 == '6') {
                                      s6 = 6;
                                    } else if (dropdownValue5 == '7') {
                                      s6 = 7;
                                    } else if (dropdownValue5 ==
                                        'Select Sound') {
                                      s6 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor5,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor5 = newValue;
                                    if (dropdownColor5 == 'Blue') {
                                      c6 = Colors.blue;
                                    } else if (dropdownColor5 == 'Green') {
                                      c6 = Colors.green;
                                    } else if (dropdownColor5 == 'Red') {
                                      c6 = Colors.red;
                                    } else if (dropdownColor5 ==
                                        'YellowAccent') {
                                      c6 = Colors.yellowAccent;
                                    } else if (dropdownColor5 == 'deepOrange') {
                                      c6 = Colors.deepOrange;
                                    } else if (dropdownColor5 == 'teal') {
                                      c6 = Colors.teal;
                                    } else if (dropdownColor5 == 'black12') {
                                      c6 = Colors.black12;
                                    } else if (dropdownColor5 ==
                                        'Select Color') {
                                      c6 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '7th_Button',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  ListTile(
                    leading: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 120.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownValue6,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue6 = newValue;
                                    if (dropdownValue6 == '1') {
                                      s7 = 1;
                                    } else if (dropdownValue6 == '2') {
                                      s7 = 2;
                                    } else if (dropdownValue6 == '3') {
                                      s7 = 3;
                                    } else if (dropdownValue6 == '4') {
                                      s7 = 4;
                                    } else if (dropdownValue6 == '5') {
                                      s7 = 5;
                                    } else if (dropdownValue6 == '6') {
                                      s7 = 6;
                                    } else if (dropdownValue6 == '7') {
                                      s7 = 7;
                                    } else if (dropdownValue6 ==
                                        'Select Sound') {
                                      s7 = Random().nextInt(7) + 1;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Sound',
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Expanded(
                              child: DropdownButton<String>(
                                value: dropdownColor6,
                                icon: Icon(Icons.arrow_downward),
                                iconSize: 15,
                                elevation: 16,
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownColor6 = newValue;
                                    if (dropdownColor6 == 'Blue') {
                                      c7 = Colors.blue;
                                    } else if (dropdownColor6 == 'Green') {
                                      c7 = Colors.green;
                                    } else if (dropdownColor6 == 'Red') {
                                      c7 = Colors.red;
                                    } else if (dropdownColor6 ==
                                        'YellowAccent') {
                                      c7 = Colors.yellowAccent;
                                    } else if (dropdownColor6 == 'deepOrange') {
                                      c7 = Colors.deepOrange;
                                    } else if (dropdownColor6 == 'teal') {
                                      c7 = Colors.teal;
                                    } else if (dropdownColor6 == 'black12') {
                                      c7 = Colors.black12;
                                    } else if (dropdownColor6 ==
                                        'Select Color') {
                                      c7 = Colors.transparent;
                                    }
                                  });
                                },
                                items: <String>[
                                  'Select Color',
                                  'Blue',
                                  'Green',
                                  'Red',
                                  'YellowAccent',
                                  'deepOrange',
                                  'teal',
                                  'black12'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 120.0,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: 150.0,
                  ),
                  ListTile(
                    leading: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/second');
                            },
                            child: Text(
                              "Lets Go",
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

class Xylophoneapp extends StatefulWidget {
  @override
  _XylophoneappState createState() => _XylophoneappState();
}

class _XylophoneappState extends State<Xylophoneapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: Text(
            'Enjoy Xylophone!!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CreateButton(c1, s1),
                CreateButton(c2, s2),
                CreateButton(c3, s3),
                CreateButton(c4, s4),
                CreateButton(c5, s5),
                CreateButton(c6, s6),
                CreateButton(c7, s7),
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
