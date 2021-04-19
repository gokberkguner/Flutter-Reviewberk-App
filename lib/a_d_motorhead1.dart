/*
import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/music.dart';

class AlDeMotorhead1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      body: CustomScrollView(
        // primary: true,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            // primary: true,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/motorhead1.png",
                  fit: BoxFit.cover),
              // centerTitle: true,
              title: Text(
                "",
                style: TextStyle(
                    backgroundColor: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  "",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.grey,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                    // backgroundColor: Colors.black,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.green,
        child: Icon(Icons.audiotrack_outlined),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MusicApp()));
          /*
          showToast('Keyifli dinlemeler :)',
              context: context,
              animation: StyledToastAnimation.slideFromLeftFade,
              reverseAnimation: StyledToastAnimation.slideToTopFade,
              toastHorizontalMargin: 0.0,
              position: StyledToastPosition(
                  align: Alignment.bottomLeft, offset: 20.0),
              startOffset: Offset(-1.0, 0.0),
              reverseEndOffset: Offset(0.0, 0.0),
              //Toast duration   animDuration * 2 <= duration
              duration: Duration(seconds: 4),
              //Animation duration   animDuration * 2 <= duration
              animDuration: Duration(seconds: 1),
              curve: Curves.linearToEaseOut,
              reverseCurve: Curves.fastOutSlowIn);

           */
        },
      ),
    );
  }
}
*/
