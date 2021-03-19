import 'package:flutter/material.dart';

void main() {
  runApp(Screen1());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Explore'),
          backgroundColor: Colors.grey[900],
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      child: Text('Discover',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      onPressed: () {},
                      color: Colors.grey[900],
                      minWidth: 350.0,
                      height: 50.0,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      child: Text('Activity',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          )),
                      onPressed: () {},
                      color: Colors.grey[900],
                      minWidth: 350.0,
                      height: 50.0,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Natures Light',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.admin_panel_settings_outlined,
                                      size: 140.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Cultural',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.face,
                                      size: 140.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Modern Life',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.home_work_outlined,
                                      size: 140.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Peoples',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.people_outline,
                                      size: 140.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Sand and Sun',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.wb_sunny_outlined,
                                      size: 140.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Card(
                            color: Colors.deepOrangeAccent,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Health',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.local_hospital_outlined,
                                      size: 140.0,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              )),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.home_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.explore_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add_box_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.message_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Compose'),
          backgroundColor: Colors.grey[900],
          leading: IconButton(icon: Icon(Icons.arrow_left), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 150.0,
                      color: Colors.tealAccent,
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            child: Text(
                              '4 People',
                              style: new TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_right), onPressed: () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 450.0,
                height: 20.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              TextField(
                style: TextStyle(color: Colors.red),
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000.0),
                    ),
                  ),
                  prefixIcon: new Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  labelText: 'Search peoples',
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.grey[900],
                ),
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
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.supervised_user_circle_outlined),
                          color: Colors.white,
                          iconSize: 50.0,
                          onPressed: () {}),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Suzain',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '2 minutes ago',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
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
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.supervised_user_circle_outlined),
                          color: Colors.white,
                          iconSize: 50.0,
                          onPressed: () {}),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Thomson',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '2 minutes ago',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
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
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.supervised_user_circle_outlined),
                          color: Colors.white,
                          iconSize: 50.0,
                          onPressed: () {}),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              'Peter',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '2 minutes ago',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
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
              Expanded(
                child: Container(
                  color: Colors.black,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(1000.0),
                          ),
                        ),
                        prefixIcon: new Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        labelText: 'Type message...',
                        labelStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.grey[900],
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.share), onPressed: () {}),
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'MT.Cateline Hotel',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "USD:967 - New York",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
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
                    child: Text(
                      "About MT. CATLIN",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Nunc justo eros. vehicula vef vehicula ut, lancinia a erat,\n Nam fringilla eros... Nullam aliquam interdum ipsum et \n tempor. Phasellus odio felis, scelerisque eu purus quis.\n",
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
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
                    child: Container(
                      height: 80.0,
                      color: Colors.grey[900],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Icon(
                              Icons.wb_sunny,
                              color: Colors.white,
                              size: 50.0,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '22* \n sunny',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.0),
                            ),
                          ),
                          Text(
                            '8.4',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                          Text(
                            '+6k votes',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
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
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.home_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.explore_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add_box_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.message_outlined),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    child: Ink(
                      height: 50.0,
                      decoration: ShapeDecoration(
                        color: Colors.grey[900],
                        shape: Border(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.supervised_user_circle_outlined),
                        color: Colors.white,
                        onPressed: () {},
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
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 330.0,
                        color: Colors.grey[900],
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Before you go',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '-- Payment at checkout',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Wi-Fi Network is off by 12:00pm',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'No swimming after 10:00pm',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'No more than 2 bags of loggage',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'No singing while showering',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'No Refunds',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            FlatButton(
                              child: Text(
                                'Book a room',
                                style: TextStyle(fontSize: 20.0),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60.0),
                                side: BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                              color: Colors.red,
                              minWidth: 300.0,
                              height: 40.0,
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
