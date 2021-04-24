import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app_flutter/quiz.dart';
import 'dart:math';
import 'package:splash_screen_view/SplashScreenView.dart';

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
          toolbarHeight: 250.0,
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
              bottom: Radius.circular(80),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                color: Colors.yellow,
                child: ListTile(
                  title: Image.asset(
                    'Images/book.png',
                    width: 500.0,
                    height: 140.0,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactus()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 60.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      correct = 0;
                      index = 0;
                      questions = null;
                      correctAnswer = null;
                      difficulty = null;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 30.0),
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactus()),
                    );
                  },
                ),
              ),
            ],
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
              color: Colors.yellow,
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
                color: Colors.white,
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
              color: Colors.yellow,
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
  Uri url = Uri.parse("https://opentdb.com/api.php?amount=20&&type=$select");
  Random random = Random();

  @override
  Future<void> fetchQuestions() async {
    var res = await http.get(url);
    var decRes = jsonDecode(res.body);
    print(decRes);
    c = Colors.black;
    quiz = Quiz.fromJson(decRes);
    results = quiz.results;
  }

  @override
  // void initState() {
  //   starttimer();
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 200.0,
        title: Text(
          'Quiz App\nCorrect Answers:$correct\nTotal questions:$index\nRemaining Time:$timer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              color: Colors.yellow,
              child: ListTile(
                title: Image.asset(
                  'Images/book.png',
                  width: 500.0,
                  height: 140.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contactus()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 60.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    correct = 0;
                    index = 0;
                    questions = null;
                    correctAnswer = null;
                    difficulty = null;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 30.0),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contactus()),
                  );
                },
              ),
            ),
          ],
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

  Expanded questionList() {
    ca = results[index].correctAnswer;
    return Expanded(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              width: 20.0,
              height: 100.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Text(
              results[index].question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 20.0,
              height: 100.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Column(
              children: results[index].allAnswers.map((m) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0),
                            side: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          onPressed: () {
                            if (m == ca && index < 9) {
                              setState(() {
                                index = index + 1;
                                correct = correct + 1;
                              });
                            } else if (m != ca && index < 9) {
                              setState(() {
                                questions[index] = results[index].question;
                                correctAnswer[index] =
                                    results[index].correctAnswer;
                                difficulty[index] = '$m';
                                index = index + 1;
                              });
                            } else if (index == 9) {
                              setState(() {
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (context) => new AnswerScreen(),
                                  ),
                                );
                              });
                            }
                          },
                          minWidth: 300,
                          color: Colors.yellow,
                          height: 60.0,
                          textColor: Colors.black,
                          child: Text(
                            m,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          )),
                    ]);
              }).toList(),
            )
          ]),
    );
  }
}

class AnswerScreen extends StatefulWidget {
  @override
  _AnswerScreenState createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100.0,
          title: Text(
            'Result',
            style: TextStyle(
              color: Colors.red,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                color: Colors.yellow,
                child: ListTile(
                  title: Image.asset(
                    'Images/book.png',
                    width: 500.0,
                    height: 140.0,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactus()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 60.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      correct = 0;
                      index = 0;
                      questions = null;
                      correctAnswer = null;
                      difficulty = null;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 30.0),
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactus()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(children: <Widget>[
                  SizedBox(
                    width: 20.0,
                    height: 30.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Wrong Questions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.red,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ),
              for (int i = 0; i < 10; i++)
                if (questions[i] != null)
                  Column(
                    children: <Widget>[
                      Container(
                        color: Colors.yellow,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '\nQuestion No ${i + 1}:       ${questions[i]}\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.blue,
                                //decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        color: Colors.deepPurple,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '\nCorrect Answer:     ${correctAnswer[i]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.green
                                  //decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                            height: 20.0,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        color: Colors.deepPurple,
                        child: Row(children: <Widget>[
                          SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '\nSelected Answer:     ${difficulty[i]}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.red
                                  //decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                          SizedBox(
                            width: 40.0,
                            height: 20.0,
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 20.0,
                            child: Divider(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              color: Colors.yellow,
              child: ListTile(
                title: Image.asset(
                  'Images/book.png',
                  width: 500.0,
                  height: 140.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contactus()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 60.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    correct = 0;
                    index = 0;
                    questions = null;
                    correctAnswer = null;
                    difficulty = null;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 30.0),
              color: Colors.white,
              child: ListTile(
                title: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => contactus()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.0,
              width: 350.0,
              child: Divider(
                color: Colors.white,
                thickness: 4.0,
              ),
            ),
            Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'Quando',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 350.0,
              child: Divider(
                color: Colors.white,
                thickness: 4.0,
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('Images/myprofile.png'),
              backgroundColor: Colors.yellow,
              radius: 70.0,
            ),
            SizedBox(
              height: 20.0,
              width: 350.0,
              child: Divider(
                color: Colors.white,
                thickness: 4.0,
              ),
            ),
            Text(
              'Muhammad Bilal',
              style: TextStyle(
                fontFamily: 'Satisfy',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 350.0,
              child: Divider(
                color: Colors.white,
                thickness: 4.0,
              ),
            ),
            Text(
              'BSCS Student/ Developer',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 5.0,
              ),
            ),
            SizedBox(
              height: 60.0,
              width: 350.0,
              child: Divider(
                color: Colors.white,
                thickness: 4.0,
              ),
            ),
            Card(
              color: Colors.yellow,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black54,
                  size: 30.0,
                ),
                title: Text(
                  '+923047966966',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
            Card(
              color: Colors.yellow,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black54,
                  size: 30.0,
                ),
                title: Text(
                  'jutt.muhammadbilal@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
            Card(
              color: Colors.yellow,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.black54,
                  size: 30.0,
                ),
                title: Text(
                  'Burewala',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.0),
                side: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String showtimer = '28';
bool canceltimer = false;
int timer = 28;
String ca;
String select;
int index = 0;
int correct = 0;
var questions = new List(10);
var category = new List(10);
var correctAnswer = new List(10);
var allAnswers = new List(10);
var difficulty = new List(10);
var type = new List(10);
