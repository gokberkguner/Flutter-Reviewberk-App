import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/anasayfa_deneme.dart';
import 'package:flutter_reviewberk_static/anasayfa_story.dart';

import 'albumdetay.dart';

void main() {
  runApp(
    MaterialApp( 
      onGenerateRoute: (RouteSettings settings) {
        List<String> pathElemanlari = settings.name.split('/');
        if (pathElemanlari[1] == 'albumReviews') {
          return MaterialPageRoute(
              builder: (context) => AlbumDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Anasayfa2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/newsplash.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
