import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/models/data/storydata.dart';

class StoryView extends StatefulWidget {
  final StoryData story;

  const StoryView({Key key, this.story}) : super(key: key);

  @override
  _StoryViewState createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent = 0.0;
  Timer _timer;
  void startTimer() {
    _timer = Timer.periodic(Duration(microseconds: 3000), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          children: [
            GestureDetector(
              onLongPress: () {},
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      widget.story.storyUrl,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    value: percent,
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(4),
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            border: Border.all(color: Colors.grey, width: 2.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                image: DecorationImage(
                                  image: NetworkImage(widget.story.avatar),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          widget.story.authorName,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
