import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app_flutter/quiz.dart';
import 'dart:math';
import 'package:splash_screen_view/SplashScreenView.dart';

String select;
int index = 0;
int correct = 0;
var questions = new List(10);
var category = new List(10);
var correctAnswer = new List(10);
var allAnswers = new List(10);
var difficulty = new List(10);
var type = new List(10);

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/second': (context) => Home(),
      '/third': (context) => HomePage(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Widget example2 = SplashScreenView(
      home: Home(),
      duration: 5000,
      imageSize: 400,
      imageSrc: "Images/myprofile.png",
      text: "Muhammad Bilal\nFA17-BCS-051",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.yellow,
    );
    return MaterialApp(
      title: 'Splash screen Demo',
      home: example2,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100.0,
          title: Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
              onPressed: () {
                setState(() {
                  select = "boolean";
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MyApp(),
                    ),
                  );
                });
              },
              color: Colors.white,
              height: 80.0,
              textColor: Colors.black,
              child: Text(
                'True/False',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 37.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
              onPressed: () {
                select = 'multiple';
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new MyApp(),
                  ),
                );
              },
              color: Colors.white,
              height: 80.0,
              textColor: Colors.black,
              child: Text(
                'Multiple Choice',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 37.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Quiz quiz;
  List<Results> results;
  Color c;
  Uri url = Uri.parse("http://opentdb.com/api.php?amount=20&&type=$select");
  Random random = Random();
  @override
  void initState() {
    super.initState();
  }

  Future<void> fetchQuestions() async {
    var res = await http.get(url);
    var decRes = jsonDecode(res.body);
    print(decRes);
    c = Colors.black;
    quiz = Quiz.fromJson(decRes);
    results = quiz.results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.0,
        title: Text(
          'Quiz App,$correct,$index',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                builder: (context) => new SplashScreen(),
              ),
            );
          },
        ),
      ),
      body: RefreshIndicator(
        onRefresh: fetchQuestions,
        child: FutureBuilder(
            future: fetchQuestions(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Press button to start.');
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                case ConnectionState.done:
                  if (snapshot.hasError) return errorData(snapshot);
                  for (int i = 1; i < 10; i++) {
                    questions[i] = results[i].question;
                    category[i] = results[i].category;
                    difficulty[i] = results[i].difficulty;
                    type[i] = results[i].type;
                    allAnswers[i] = results[i].allAnswers;
                    correctAnswer[i] = results[i].correctAnswer;
                  }
                  return questionList();
              }
              return null;
            }),
      ),
    );
  }

  Column errorData(AsyncSnapshot snapshot) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Error: ${snapshot.error}',
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          child: Text("Try Again"),
          onPressed: () {
            fetchQuestions();
            setState(() {});
          },
        ),
      ],
    );
  }

  Center questionList() {
    ca = results[index].correctAnswer;
    return Center(
      child: ExpansionTile(
        title: Text(
          results[index].question,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        children: results[index].allAnswers.map((m) {
          return FlatButton(
              onPressed: () {
                if (m == ca && index < 10) {
                  setState(() {
                    index = index + 1;
                    correct = correct + 1;
                  });
                } else if (m != ca && index < 10) {
                  setState(() {
                    index = index + 1;
                  });
                } else if (index >= 10) {
                  setState(() {
                    AlertDialog alert = AlertDialog(
                      title: Text('Resuly'),
                      content: Text('$correct/10'),
                      actions: [
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Ok'),
                        ),
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext) {
                        return alert;
                      },
                    );
                  });
                }
              },
              child: Text(
                m,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ));
        }).toList(),
      ),
    );
  }
}

String ca;
