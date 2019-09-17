import 'package:flutter/material.dart';
import 'package:the_gorgeous_login/ui/login_page.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WMF',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}


class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed:
            _launchURL,
          child: Text('ResMan'),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://wehner.myresman.com/Access/SignIn';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}