import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreen(),
      '/second': (context) => Home(),
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
      backgroundColor: Colors.black,
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
    return SafeArea(
        child: MaterialApp(
            home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 200.0,
        title: Text(
          'Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        backgroundColor: Colors.black,
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
              color: Colors.black,
              child: ListTile(
                title: Image.asset(
                  'Images/cal.png',
                  width: 500.0,
                  height: 140.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contactus()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 60.0),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Hard Calculator',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hard()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Simple Calculator',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Simple()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 30.0),
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
                    MaterialPageRoute(builder: (context) => Contactus()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 60.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnswerScreen()),
                    );
                  },
                ),
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
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => new Simple(),
                  ),
                );
              });
            },
            color: Colors.black,
            height: 80.0,
            textColor: Colors.white,
            child: Text(
              'Simple Calculator',
              style: TextStyle(
                color: Colors.white,
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
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new Hard(),
                ),
              );
            },
            color: Colors.black,
            height: 80.0,
            textColor: Colors.white,
            child: Text(
              'Hard Calculator',
              style: TextStyle(
                color: Colors.white,
                fontSize: 37.0,
              ),
            ),
          ),
        ],
      ),
    )));
  }
}

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100.0,
          title: Text(
            'Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.black,
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
                color: Colors.black,
                child: ListTile(
                  title: Image.asset(
                    'Images/cal.png',
                    width: 500.0,
                    height: 140.0,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contactus()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 60.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 20.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Hard Calculator',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hard()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 20.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Simple Calculator',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Simple()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0),
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
                      MaterialPageRoute(builder: (context) => Contactus()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 60.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'History',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnswerScreen()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
              CircleAvatar(
                backgroundImage: AssetImage('Images/myprofile.png'),
                backgroundColor: Colors.black,
                radius: 70.0,
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
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: Text(
                    '+923047966966',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
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
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: Text(
                    'jutt.muhammadbilal@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
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
                color: Colors.black,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  title: Text(
                    'Burewala',
                    style: TextStyle(
                      color: Colors.white,
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

class Simple extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  String value1;
  String value2;
  String operator;
  int result;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80.0,
        title: Text(
          'Simple Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.0,
          ),
        ),
        backgroundColor: Colors.black,
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
              color: Colors.black,
              child: ListTile(
                title: Image.asset(
                  'Images/cal.png',
                  width: 500.0,
                  height: 140.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contactus()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 60.0),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Hard Calculator',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hard()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 20.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Simple Calculator',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Simple()),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 30.0),
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
                    MaterialPageRoute(builder: (context) => Contactus()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 60.0),
              color: Colors.white,
              child: Center(
                child: ListTile(
                  title: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnswerScreen()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                maxLength: 8,
                textInputAction: TextInputAction.next,
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'value1',
                ),
                onChanged: (text) {
                  value1 = text;
                },
              ),
            ),
            DropdownButton<String>(
              focusColor: Colors.black,
              icon: Icon(Icons.arrow_downward),
              iconSize: 30,
              iconEnabledColor: Colors.black,
              elevation: 30,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              onChanged: (String newValue) {
                setState(() {
                  operator = newValue;
                });
              },
              items: <String>['+', '-', '/', '*', '%']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black, fontSize: 30.0),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                maxLength: 8,
                textInputAction: TextInputAction.done,
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'value2',
                ),
                onChanged: (text) {
                  value2 = text;
                },
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
                setState(() {
                  if (operator == '+') {
                    result = int.parse(value1) + int.parse(value2);
                  } else if (operator == '*') {
                    result = int.parse(value1) * int.parse(value2);
                  } else if (operator == '-') {
                    result = int.parse(value1) - int.parse(value2);
                  } else if (operator == '%') {
                    result = int.parse(value1) % int.parse(value2);
                  } else if (operator == '/') {
                    result = int.parse(value1) ~/ int.parse(value2);
                  }

                  questions[index] = value1 + operator + value2;
                  answer[index] = result;
                  type[index] = 'simple';
                  index++;
                  if (index > 9) {
                    start++;
                  }

                  AlertDialog alert = AlertDialog(
                    title: Text('$result'),
                    actions: [],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext) {
                      return alert;
                    },
                  );
                });
              },
              color: Colors.blue,
              height: 80.0,
              textColor: Colors.white,
              child: Text(
                '=',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 47.0,
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}

class Hard extends StatefulWidget {
  @override
  _HardState createState() => _HardState();
}

class _HardState extends State<Hard> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        equation = "0";
        result = "0";
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      } else if (buttonText == "⌫") {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        equationFontSize = 38.0;
        resultFontSize = 48.0;

        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
        questions[index] = expression;
        answer[index] = result;
        type[index] = 'hard';
        index++;
        if (index > 9) {
          start++;
        }
      } else {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: MediaQuery.of(context).size.height * 0.12 * buttonHeight,
      color: Colors.white,
      child: FlatButton(
          color: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(800.0),
              side: BorderSide(
                  color: buttonColor, width: 1, style: BorderStyle.solid)),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.white,
              fontSize: 30.0,
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.black54,
                appBar: AppBar(
                  centerTitle: true,
                  toolbarHeight: 80.0,
                  title: Text(
                    'Hard Calculator',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                  backgroundColor: Colors.black,
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
                        color: Colors.black,
                        child: ListTile(
                          title: Image.asset(
                            'Images/cal.png',
                            width: 500.0,
                            height: 140.0,
                            fit: BoxFit.cover,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contactus()),
                            );
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 60.0),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 20.0),
                        color: Colors.white,
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'Hard Calculator',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Hard()),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 20.0),
                        color: Colors.white,
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'Simple Calculator',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Simple()),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 30.0),
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
                              MaterialPageRoute(
                                  builder: (context) => Contactus()),
                            );
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 60.0),
                        color: Colors.white,
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'History',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnswerScreen()),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                body: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        color: Colors.black,
                        alignment: Alignment.centerRight,
                        child: Text(
                          equation,
                          style: TextStyle(
                            fontSize: equationFontSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          result,
                          style: TextStyle(
                            fontSize: resultFontSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                                  if (ur < index) {
                                    ur++;
                                  }

                                  equation = questions[index - ur];
                                  result = answer[index - ur];
                                });
                              },
                              color: Colors.black,
                              height: 80.0,
                              textColor: Colors.white,
                              child: Text(
                                'undo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
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
                                setState(() {
                                  if (ur > 1) {
                                    ur--;
                                  }

                                  equation = questions[index - ur];
                                  result = answer[index - ur];
                                });
                              },
                              color: Colors.black,
                              height: 80.0,
                              textColor: Colors.white,
                              child: Text(
                                'redo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * .75,
                            child: Table(
                              children: [
                                TableRow(children: [
                                  buildButton("C", 1, Colors.black),
                                  buildButton("⌫", 1, Colors.black),
                                  buildButton("÷", 1, Colors.black),
                                ]),
                                TableRow(children: [
                                  buildButton("7", 1, Colors.black54),
                                  buildButton("8", 1, Colors.black54),
                                  buildButton("9", 1, Colors.black54),
                                ]),
                                TableRow(children: [
                                  buildButton("4", 1, Colors.black54),
                                  buildButton("5", 1, Colors.black54),
                                  buildButton("6", 1, Colors.black54),
                                ]),
                                TableRow(children: [
                                  buildButton("1", 1, Colors.black54),
                                  buildButton("2", 1, Colors.black54),
                                  buildButton("3", 1, Colors.black54),
                                ]),
                                TableRow(children: [
                                  buildButton(".", 1, Colors.black54),
                                  buildButton("0", 1, Colors.black54),
                                  buildButton("00", 1, Colors.black54),
                                ]),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Table(
                              children: [
                                TableRow(children: [
                                  buildButton("×", 1, Colors.black),
                                ]),
                                TableRow(children: [
                                  buildButton("-", 1, Colors.black),
                                ]),
                                TableRow(children: [
                                  buildButton("+", 1, Colors.black),
                                ]),
                                TableRow(children: [
                                  buildButton("=", 2, Colors.redAccent),
                                ]),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]))));
  }
}

var questions = new List(1000);
var answer = new List(1000);
var type = new List(1000);
int index = 0;
int start = 0;
int end = 9;
int ur = 0;

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
          toolbarHeight: 80.0,
          title: Text(
            'Hard Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
            ),
          ),
          backgroundColor: Colors.black,
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
                color: Colors.black,
                child: ListTile(
                  title: Image.asset(
                    'Images/cal.png',
                    width: 500.0,
                    height: 140.0,
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contactus()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 60.0),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 20.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Hard Calculator',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hard()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 20.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'Simple Calculator',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Simple()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0),
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
                      MaterialPageRoute(builder: (context) => Contactus()),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 60.0),
                color: Colors.white,
                child: Center(
                  child: ListTile(
                    title: Text(
                      'History',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnswerScreen()),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
            color: Colors.white,
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
                          'History',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35.0,
                            color: Colors.green,
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
                Column(children: <Widget>[
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 0]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 0]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 0]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 1]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 1]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 1]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '3',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 2]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 2]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 2]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '4',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 3]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 3]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 3]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '5',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 4]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 4]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 4]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '6',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 5]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 5]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 5]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '7',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 6]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 6]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 6]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '8',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 7]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 7]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 7]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '9',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${type[start + 8]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'Equation: ${questions[start + 8]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    'Solution: ${answer[start + 8]}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 400.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                ]),
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
            )),
      ),
    );
  }
}
