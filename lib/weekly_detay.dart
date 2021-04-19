import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/weekly_underrated.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/weekly_underrated_reviews.dart';

//import 'models/album_reviews.dart';

class WeeklyDetay extends StatefulWidget {
  int gelenIndex;

  WeeklyDetay(this.gelenIndex);

  @override
  _WeeklyDetayState createState() => _WeeklyDetayState();
}

class _WeeklyDetayState extends State<WeeklyDetay> {
  WeeklyUnderratedReviews secilenWeekly;

  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.google.com';

  @override
  Future<void> _launchInApp(String url) async {
    await launch('${secilenWeekly.urlName}');
  }

  void initState() {
    super.initState();
    secilenWeekly = WeeklyUnderrated.allReviews[widget.gelenIndex];
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _launchInApp(_launchUrl);
          },
          backgroundColor: Colors.black,
          foregroundColor: Colors.green,
          child: Icon(Icons.music_note_outlined),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              primary: true,
              snap: false,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  '"${secilenWeekly.groupName}"',
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.black),
                ),
                background: Image.asset(
                  '${secilenWeekly.fotograf}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(6.0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.black38,
                ),
                child: SingleChildScrollView(
                  child: Text(
                    '${secilenWeekly.ozellikler}',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
