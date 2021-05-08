import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

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
        toolbarHeight: 250.0,
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
                    MaterialPageRoute(builder: (context) => Contactus()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(),
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
                      MaterialPageRoute(builder: (context) => Contactus()),
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
