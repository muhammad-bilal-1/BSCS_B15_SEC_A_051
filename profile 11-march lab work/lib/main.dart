import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.blueAccent,
                toolbarHeight: 250.0,
                centerTitle: true,
                title: Icon(Icons.account_circle),
                iconTheme: IconThemeData(
                  color: Colors.white,
                  size: 150,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
              ),
              SizedBox(
                width: 450.0,
                height: 40.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000.0),
                    ),
                  ),
                  prefixIcon: Icon(Icons.account_circle),
                  labelText: 'Username or email',
                ),
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000.0),
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear,
                    ),
                  ),
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              FlatButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20.0),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.0),
                  side: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                color: Colors.blueAccent,
                minWidth: 350.0,
                height: 80.0,
                textColor: Colors.white,
                onPressed: () {},
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                'Recover Password',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
